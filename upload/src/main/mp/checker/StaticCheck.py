
"""
 * @author nhphung
"""
from AST import * 
from Visitor import *
from Utils import Utils
from StaticError import *

class MType:
    def __init__(self,partype,rettype):
        self.partype = partype
        self.rettype = rettype

class Symbol:
    def __init__(self,name,mtype,value = None):
        self.name = name
        self.mtype = mtype
        self.value = value

class StaticChecker(BaseVisitor,Utils):
    global_envi = [Symbol('getInt',MType([],IntType())),
    			   Symbol('putInt',MType([IntType()],VoidType())),
                   Symbol('putIntLn',MType([IntType()],VoidType())),
                   Symbol('getFloat',MType([],FloatType())),
                   Symbol('putFloat',MType([FloatType()],VoidType())),
                   Symbol('putFloatLn',MType([FloatType()],VoidType())),
                   Symbol('putBool',MType([BoolType()],VoidType())),
                   Symbol('putBoolLn',MType([BoolType()],VoidType())),
                   Symbol('putString',MType([StringType()],VoidType())),
                   Symbol('putStringLn',MType([StringType()],VoidType())),
                   Symbol('putLn',MType([],VoidType()))]   
    base_type = [IntType, FloatType, BoolType, StringType, VoidType]

    def __init__(self,ast):
        self.ast = ast
        self.function_referred = dict()
   
    def check(self):
        return self.visit(self.ast, StaticChecker.global_envi)

    def getNecessParam(self, stmt, *c):
        envi, isUnreachable, returnType, inLoop = c
        necessParam = (envi, isUnreachable)
        if isinstance(stmt, (If, For, While, With)):
            necessParam += (returnType, inLoop)
        elif isinstance(stmt, (Break, Continue)):
            necessParam += (inLoop,)
        elif isinstance(stmt, Return):
            necessParam += (returnType,)
        return necessParam

    def visitExpr(self, ast, c):
        return self.visit(ast, (c, Identifier())) if isinstance(ast, Id) else self.visit(ast, c)

    def checkEligibleKind(self, mtype, kind):
        if isinstance(mtype, MType):
            if isinstance(mtype.rettype, VoidType) and isinstance(kind, Procedure):
                return True
            if not isinstance(mtype.rettype, VoidType) and isinstance(kind, Function):
                return True
            return False
        else:
            return isinstance(kind, Identifier)
        
    def checkTypeEquivalence(self, left, right):
        if (type(left) in StaticChecker.base_type) and (type(right) in StaticChecker.base_type):
            return (type(left) is type(right)) or (isinstance(left, FloatType) and isinstance(right, IntType))
        if isinstance(left, ArrayType) and isinstance(right, ArrayType):
            return (left.lower == right.lower) and (left.upper == right.upper) and (type(left.eleType) is type(right.eleType))
        if isinstance(left, MType) and isinstance(right, MType):
            if self.checkTypeEquivalence(right.rettype, left.rettype):
                if len(left.partype) == len(right.partype):
                    return all(self.checkTypeEquivalence(x, y) for x, y in zip(left.partype, right.partype))
        return False

    def checkEntryPoint(self, globalDeclarations):
        #globalDeclarations is list of Symbol objects
        lookUpMain = self.lookup('main', globalDeclarations, lambda x: x.name.lower())
        if lookUpMain is None or not(self.checkTypeEquivalence(lookUpMain.mtype, MType([], VoidType()))):
            raise NoEntryPoint()

    def visitBreakOrContinue(self, ast, c, isContinue = True):
        envi, isUnreachable, inLoop = c
        if isUnreachable:
            raise UnreachableStatement(ast)
        if inLoop:
            return False, True
        if isContinue:
            raise ContinueNotInLoop()
        else:
            raise BreakNotInLoop()

    def visitProgram(self, ast, c):
        funcDecls, myGlobal = [], c[:]
        for d in ast.decl:
            if isinstance(d, FuncDecl):
                res = self.visit(d, myGlobal)
                funcDecls.append((d, res))
            else:
                self.visit(d, (myGlobal, Variable()))
        self.checkEntryPoint(myGlobal[11:])
        for d, local in funcDecls:
            self.visit(d, (myGlobal, local))
        for x in [otr[0] for otr in funcDecls]:
            name = x.name.name
            if name.lower() != 'main':
                if not self.function_referred[name.lower()]:
                    kind = Procedure() if isinstance(x.returnType, VoidType) else Function()
                    raise Unreachable(kind, name)
        return []
    
    def visitVarDecl(self, ast, c):
        varName, envi, kind = ast.variable.name, c[0], c[1]
        res = self.lookup(varName.lower(), envi, lambda x: x.name.lower())
        if res:
            raise Redeclared(kind, varName)
        envi.append(Symbol(varName, ast.varType))
    
    def visitFuncDecl(self, ast, c):
        funcName = ast.name.name
        firstTime = True if isinstance(c, list) else False
        kind = Procedure() if isinstance(ast.returnType, VoidType) else Function()
        if firstTime:
            res = self.lookup(funcName.lower(), c, lambda x: x.name.lower())
            if res:
                raise Redeclared(kind, funcName)
            localVars = []
            for p in ast.param:
                self.visit(p, (localVars, Parameter()))
            for v in ast.local:
                self.visit(v, (localVars, Variable()))
            c.append(Symbol(funcName, MType([x.varType for x in ast.param], ast.returnType)))
            self.function_referred[funcName.lower()] = False
            return localVars
        else:
            isReturned, isUnreachable, enviGlobal, enviLocal = False, False, c[0], c[1]
            envi = enviLocal + enviGlobal
            self.currentFunc = funcName
            for stmt in ast.body:
                necessParam = self.getNecessParam(stmt, envi, isUnreachable, ast.returnType, False)
                isReturned, isUnreachable = self.visit(stmt, necessParam)
            if not isReturned and isinstance(kind, Function):
                raise FunctionNotReturn(funcName)
            return None
    
    def visitBinaryOp(self, ast, c):
        leftType, rightType = self.visitExpr(ast.left, c), self.visitExpr(ast.right, c)
        op = ast.op.lower()
        if op in ['not', 'and', 'andthen', 'orelse', 'or']:
            if isinstance(leftType, BoolType) and isinstance(rightType, BoolType):
                return BoolType()
        if op in ['<', '>', '<=', '>=', '=', '<>']:
            if isinstance(leftType, (IntType, FloatType)) and isinstance(rightType, (IntType, FloatType)):
                return BoolType()
        if op in ['div', 'mod']:
            if isinstance(leftType, IntType) and isinstance(rightType, IntType):
                return IntType()
        if op in ['+', '-', '*', '/']:
            if isinstance(leftType, (IntType, FloatType)) and isinstance(rightType, (IntType, FloatType)):
                if op == '/':
                    return FloatType()
                return IntType() if isinstance(leftType, IntType) and isinstance(rightType, IntType) else FloatType()
        raise TypeMismatchInExpression(ast)

    def visitUnaryOp(self, ast, c):
        expType = self.visitExpr(ast.body, c)
        op = ast.op.lower()
        if op == 'not':
            if isinstance(expType, BoolType):
                return BoolType()
        if op == '-':
            if isinstance(expType, IntType):
                return IntType()
            if isinstance(expType, FloatType):
                return FloatType()
        raise TypeMismatchInExpression(ast)
    
    def visitCallExpr(self, ast, c):
        methodType = self.visit(ast.method, (c, Function()))            #MType
        expTypes = [self.visitExpr(e, c) for e in ast.param]
        if len(methodType.partype) != len(expTypes):
            raise TypeMismatchInExpression(ast)
        if not(all(self.checkTypeEquivalence(x, y) for x, y in zip(methodType.partype, expTypes))):
            raise TypeMismatchInExpression(ast)
        funcName = ast.method.name
        if self.currentFunc.lower() != funcName.lower():
            self.function_referred[funcName.lower()] = True
        return methodType.rettype
    
    def visitId(self, ast, c):
        envi, kind = c
        symbol = self.lookup(ast.name.lower(), envi, lambda x: x.name.lower())
        if symbol:
            if self.checkEligibleKind(symbol.mtype, kind):
                return symbol.mtype
        raise Undeclared(kind, ast.name)

    def visitArrayCell(self, ast, c):
        arrType, idxType = self.visitExpr(ast.arr, c), self.visitExpr(ast.idx, c)
        if isinstance(arrType, ArrayType) and isinstance(idxType, IntType):
            return arrType.eleType
        raise TypeMismatchInExpression(ast)
    
    def visitAssign(self, ast, c):
        envi, isUnreachable = c
        if isUnreachable:
            raise UnreachableStatement(ast)
        lhsType, rhsType = self.visitExpr(ast.lhs, envi), self.visitExpr(ast.exp, envi)
        if isinstance(lhsType, (StringType, ArrayType)):
            raise TypeMismatchInStatement(ast)
        if not (self.checkTypeEquivalence(lhsType, rhsType)):
            raise TypeMismatchInStatement(ast)
        return False, False
    
    def visitWith(self, ast, c):
        envi, isUnreachable, returnType, inLoop = c
        if isUnreachable:
            raise UnreachableStatement(ast)
        blockVars = []
        for v in ast.decl:
            self.visit(v, (blockVars, Variable()))
        envi = blockVars + envi
        withReturned, withUnreachable = False, False
        for stmt in ast.stmt:
            necessParam = self.getNecessParam(stmt, envi, withUnreachable, returnType, inLoop)
            withReturned, withUnreachable = self.visit(stmt, necessParam)
        return withReturned, withUnreachable
    
    def visitIf(self, ast, c):
        envi, isUnreachable, returnType, inLoop = c
        if isUnreachable:
            raise UnreachableStatement(ast)
        exprType = self.visitExpr(ast.expr, envi)
        if not isinstance(exprType, BoolType):
            raise TypeMismatchInStatement(ast)
        thenReturned, thenUnreachable = False, False
        for stmt in ast.thenStmt:
            necessParam = self.getNecessParam(stmt, envi, thenUnreachable, returnType, inLoop)
            thenReturned, thenUnreachable = self.visit(stmt, necessParam)
        elseReturned, elseUnreachable = False, False
        for stmt in ast.elseStmt:
            necessParam = self.getNecessParam(stmt, envi, elseUnreachable, returnType, inLoop)
            elseReturned, elseUnreachable = self.visit(stmt, necessParam)
        return (thenReturned and elseReturned), (thenUnreachable and elseUnreachable)
    
    def visitFor(self, ast, c):
        envi, isUnreachable, returnType, inLoop, = c
        if isUnreachable:
            raise UnreachableStatement(ast)
        idType = self.visit(ast.id, (envi, Identifier()))
        expr1Type, expr2Type = self.visitExpr(ast.expr1, envi), self.visitExpr(ast.expr2, envi)
        if not all(isinstance(x, IntType) for x in [idType, expr1Type, expr2Type]):
            raise TypeMismatchInStatement(ast)
        forReturned, forUnreachable = False, False
        for stmt in ast.loop:
            necessParam = self.getNecessParam(stmt, envi, forUnreachable, returnType, True)
            forReturned, forUnreachable = self.visit(stmt, necessParam)
        return False, False

    def visitContinue(self, ast, c):
        return self.visitBreakOrContinue(ast, c)
    
    def visitBreak(self, ast, c):
        return self.visitBreakOrContinue(ast, c, False)
    
    def visitReturn(self, ast, c):
        envi, isUnreachable, returnType = c
        if isUnreachable:
            raise UnreachableStatement(ast)
        if isinstance(returnType, VoidType):
            if ast.expr:
                raise TypeMismatchInStatement(ast)
        else:
            if not ast.expr:
                raise TypeMismatchInStatement(ast)
            expType = self.visitExpr(ast.expr, envi)
            if not (self.checkTypeEquivalence(returnType, expType)):
                raise TypeMismatchInStatement(ast)
        return True, True
    
    def visitWhile(self, ast, c):
        envi, isUnreachable, returnType, inLoop = c
        if isUnreachable:
            raise UnreachableStatement(ast)
        expType = self.visitExpr(ast.exp, envi)
        if not isinstance(expType, BoolType):
            raise TypeMismatchInStatement(ast)
        whileReturned, whileUnreachable = False, False
        for stmt in ast.sl:
            necessParam = self.getNecessParam(stmt, envi, whileUnreachable, returnType, True)
            whileReturned, whileUnreachable = self.visit(stmt, necessParam)
        return False, False
    
    def visitCallStmt(self, ast, c):
        envi, isUnreachable = c
        if isUnreachable:
            raise UnreachableStatement(ast)
        methodType = self.visit(ast.method, (envi, Procedure()))            #MType
        expTypes = [self.visitExpr(e, envi) for e in ast.param]
        if len(methodType.partype) != len(expTypes):
            raise TypeMismatchInStatement(ast)
        if not(all(self.checkTypeEquivalence(x, y) for x, y in zip(methodType.partype, expTypes))):
            raise TypeMismatchInStatement(ast)
        proceName = ast.method.name
        if self.currentFunc.lower() != proceName.lower():
            self.function_referred[proceName.lower()] = True
        return False, False        
    
    def visitIntLiteral(self, ast, c):
        return IntType()
    
    def visitFloatLiteral(self, ast, c):
        return FloatType()
    
    def visitBooleanLiteral(self, ast, c):
        return BoolType()
    
    def visitStringLiteral(self, ast, c):
        return StringType()