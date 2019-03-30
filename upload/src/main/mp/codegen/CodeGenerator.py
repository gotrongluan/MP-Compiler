'''
 *   @author Nguyen Hua Phung
 *   @version 1.0
 *   23/10/2015
 *   This file provides a simple version of code generator
 *
'''
from Utils import *
from StaticCheck import *
from StaticError import *
from Emitter import Emitter
from Frame import Frame
from abc import ABC, abstractmethod

class CodeGenerator(Utils):
    def __init__(self):
        self.libName = "io"

    def init(self):
        return [Symbol("getInt", MType(list(), IntType()), CName(self.libName)),
                    Symbol("putInt", MType([IntType()], VoidType()), CName(self.libName)),
                    Symbol("putIntLn", MType([IntType()], VoidType()), CName(self.libName)),
                    Symbol("putFloat", MType([FloatType()], VoidType()), CName(self.libName)),
                    Symbol("getFloat", MType(list(), FloatType()), CName(self.libName)),
                    Symbol("putFloatLn", MType([FloatType()], VoidType()), CName(self.libName)),
                    Symbol("putBool", MType([BoolType()], VoidType()), CName(self.libName)),
                    Symbol("putBoolLn", MType([BoolType()], VoidType()), CName(self.libName)),
                    Symbol("putString", MType([StringType()], VoidType()), CName(self.libName)),
                    Symbol("putStringLn", MType([StringType()], VoidType()), CName(self.libName)),
                    Symbol("putLn", MType(list(), VoidType()), CName(self.libName))
                    ]

    def gen(self, ast, dir_):
        gl = self.init()
        gc = CodeGenVisitor(ast, gl, dir_)
        gc.visit(ast, None)

class ArrayPointerType(Type):
    def __init__(self, ctype):
        self.eleType = ctype
    def __str__(self):
        return "ArrayPointerType({0})".format(str(self.eleType))
    def accept(self, v, param):
        return None

class ClassType(Type):
    def __init__(self,cname):
        self.cname = cname
    def __str__(self):
        return "Class({0})".format(str(self.cname))
    def accept(self, v, param):
        return None
        
class SubBody():
    def __init__(self, frame, sym):
        self.frame = frame
        self.sym = sym

class Access():
    def __init__(self, frame, sym, isLeft, isFirst):
        self.frame = frame
        self.sym = sym
        self.isLeft = isLeft
        self.isFirst = isFirst

class Val(ABC):
    pass

class Index(Val):
    def __init__(self, value):
        self.value = value

class CName(Val):
    def __init__(self, value):
        self.value = value

class CodeGenVisitor(BaseVisitor, Utils):
    def __init__(self, astTree, env, dir_):
        self.astTree = astTree
        self.env = env
        self.className = "MPClass"
        self.path = dir_
        self.emit = Emitter(self.path + "/" + self.className + ".j")
        self.arrayGlobals = list()

    def visitProgram(self, ast, c):
        self.emit.printout(self.emit.emitPROLOG(self.className, "java/lang/Object"))
        funcDecls = []
        for d in ast.decl:
            if isinstance(d, VarDecl):
                self.env = self.visit(d, self.env)
                if type(d.varType) is ArrayType:
                    self.arrayGlobals.append(d)
            else:
                funcDecls.append(d)
                self.env = self.visit(d, (self.env, True))
        for d in funcDecls:
            self.visit(d, (self.env, False))
        self.genCONSTRUCTOR(Frame("<init>", VoidType()))
        if len(self.arrayGlobals) > 0:
            self.genSTATICCONSTRUCTOR(Frame("<clinit>", VoidType()))
        self.emit.emitEPILOG()

    def genSTATICCONSTRUCTOR(self, frame):
        self.emit.printout(self.emit.emitMETHOD("<clinit>", MType(list(), VoidType()), True, frame))
        frame.enterScope(True)
        for arr in self.arrayGlobals:
            self.emit.printout(self.emit.emitNEWARRAY(arr.varType, frame))
            self.emit.printout(self.emit.emitPUTSTATIC(self.className + '.' + arr.variable.name, arr.varType, frame))
        self.emit.printout(self.emit.emitRETURN(VoidType(), frame))
        self.emit.printout(self.emit.emitENDMETHOD(frame))
        frame.exitScope()

    def genCONSTRUCTOR(self, frame):
        self.emit.printout(self.emit.emitMETHOD("<init>", MType(list(), VoidType()), False, frame))
        frame.enterScope(True)
        self.emit.printout(self.emit.emitVAR(frame.getNewIndex(), "this", ClassType(self.className), frame.getStartLabel(), frame.getEndLabel(), frame))
        self.emit.printout(self.emit.emitLABEL(frame.getStartLabel(), frame))
        self.emit.printout(self.emit.emitREADVAR("this", ClassType(self.className), 0, frame))
        self.emit.printout(self.emit.emitINVOKESPECIAL(frame))
        self.emit.printout(self.emit.emitLABEL(frame.getEndLabel(), frame))
        self.emit.printout(self.emit.emitRETURN(VoidType(), frame))
        self.emit.printout(self.emit.emitENDMETHOD(frame))
        frame.exitScope()

    def genMETHOD(self, consdecl, env, frame):
        returnType = consdecl.returnType
        isMain = consdecl.name.name.lower() == "main" and len(consdecl.param) == 0 and type(returnType) is VoidType
        methodName = "main" if isMain else consdecl.name.name
        intype = [ArrayType(None, None, StringType())] if isMain else [p.varType for p in consdecl.param]
        mtype = MType(intype, returnType)
        self.emit.printout(self.emit.emitMETHOD(methodName, mtype, True, frame))
        frame.enterScope(True)
        nenv = env[:]
        if isMain:
            self.emit.printout(self.emit.emitVAR(frame.getNewIndex(), "args", ArrayType(None, None, StringType()), frame.getStartLabel(), frame.getEndLabel(), frame))
        else:
            for p in consdecl.param:
                index = frame.getNewIndex()
                nenv = [Symbol(p.variable.name, p.varType, Index(index))] + nenv
                self.emit.printout(self.emit.emitVAR(index, p.variable.name, p.varType, frame.getStartLabel(), frame.getEndLabel(), frame))
        self.emit.printout(self.emit.emitLABEL(frame.getStartLabel(), frame))
        for v in consdecl.local:
            index = frame.getNewIndex()
            nenv = [Symbol(v.variable.name, v.varType, Index(index))] + nenv
            if type(v.varType) is ArrayType:
                self.emit.printout(self.emit.emitNEWARRAY(v.varType, frame))
                self.emit.printout(self.emit.emitWRITEVAR(v.variable.name, v.varType, index, frame))
        list(map(lambda x: self.visit(x, SubBody(frame, nenv)), consdecl.body))
        self.emit.printout(self.emit.emitLABEL(frame.getEndLabel(), frame))
        if type(returnType) is VoidType:
            self.emit.printout(self.emit.emitRETURN(VoidType(), frame))
        self.emit.printout(self.emit.emitENDMETHOD(frame))
        frame.exitScope()

    def visitFuncDecl(self, ast, o):
        glenv, isFirstTime = o
        if isFirstTime:
            inType = [x.varType for x in ast.param]
            return [Symbol(ast.name.name, MType(inType, ast.returnType), CName(self.className))] + glenv
        frame = Frame(ast.name.name, ast.returnType)
        self.genMETHOD(ast, glenv, frame)

    def visitVarDecl(self, ast, o):
        glenv = o
        self.emit.printout(self.emit.emitATTRIBUTE(ast.variable.name, ast.varType, False, None))
        return [Symbol(ast.variable.name, ast.varType, CName(self.className))] + glenv

    def visitAssign(self, ast, o):
        ctxt = o
        frame, nenv = ctxt.frame, ctxt.sym
        if isinstance(ast.lhs, Id):
            expCode, expType = self.visit(ast.exp, Access(frame, nenv, False, True))
            self.emit.printout(expCode)
            sym = self.lookup(ast.lhs.name.lower(), nenv, lambda x: x.name.lower())
            if isinstance(expType, IntType) and isinstance(sym.mtype, FloatType):
                self.emit.printout(self.emit.emitI2F(frame))
        else:
            arrayCellCode, arrayCellType = self.visit(ast.lhs, Access(frame, nenv, True, True))
            self.emit.printout(arrayCellCode)
            expCode, expType = self.visit(ast.exp, Access(frame, nenv, False, True))
            self.emit.printout(expCode)
            if isinstance(expType, IntType) and isinstance(arrayCellType, FloatType):
                self.emit.printout(self.emit.emitI2F(frame))
        self.visit(ast.lhs, Access(frame, nenv, True, False))
        return False
    
    def visitWith(self, ast, o):
        ctxt = o
        frame, nenv = ctxt.frame, ctxt.sym
        arrays = list()
        frame.enterScope(False)
        for d in ast.decl:
            index = frame.getNewIndex()
            nenv = [Symbol(d.variable.name, d.varType, Index(index))] + nenv
            if type(d.varType) is ArrayType:
                arrays.append((d, index))
            self.emit.printout(self.emit.emitVAR(index, d.variable.name, d.varType, frame.getStartLabel(), frame.getEndLabel(), frame))
        self.emit.printout(self.emit.emitLABEL(frame.getStartLabel(), frame))
        for arr, index in arrays:
            self.emit.printout(self.emit.emitNEWARRAY(arr.varType, frame))
            self.emit.printout(self.emit.emitWRITEVAR(arr.variable.name, arr.varType, index, frame))
        unReachable = False
        for stmt in ast.stmt:
            unReachable = self.visit(stmt, SubBody(frame, nenv))
        self.emit.printout(self.emit.emitLABEL(frame.getEndLabel(), frame))
        frame.exitScope()
        return unReachable

    def visitIf(self, ast, o):
        ctxt = o
        frame, nenv = ctxt.frame, ctxt.sym
        self.emit.printout(self.visit(ast.expr, Access(frame, nenv, False, True))[0])
        if len(ast.elseStmt) == 0:
            label = frame.getNewLabel()
            self.emit.printout(self.emit.emitIFFALSE(label, frame))
            list(map(lambda x: self.visit(x, SubBody(frame, nenv)), ast.thenStmt))
            self.emit.printout(self.emit.emitLABEL(label, frame))
            return False
        else:
            label1 = frame.getNewLabel()
            label2 = None
            unReachableThen, unReachableElse = False, False
            self.emit.printout(self.emit.emitIFFALSE(label1, frame))
            for stmt in ast.thenStmt:
                unReachableThen = self.visit(stmt, SubBody(frame, nenv))
            if not unReachableThen:
                label2 = frame.getNewLabel()
                self.emit.printout(self.emit.emitGOTO(label2, frame))
            self.emit.printout(self.emit.emitLABEL(label1, frame))
            for stmt in ast.elseStmt:
                unReachableElse = self.visit(stmt, SubBody(frame, nenv))
            if not unReachableThen:
                self.emit.printout(self.emit.emitLABEL(label2, frame))
            return unReachableThen and unReachableElse
    
    def visitFor(self, ast, o):
        ctxt = o
        frame, nenv = ctxt.frame, ctxt.sym
        frame.enterLoop()
        continueLabel, breakLabel = frame.getContinueLabel(), frame.getBreakLabel()
        labelS = frame.getNewLabel()
        ini_ = Assign(ast.id, ast.expr1)
        self.visit(ini_, SubBody(frame, nenv))
        self.emit.printout(self.emit.emitLABEL(labelS, frame))
        sym = self.lookup(ast.id.name.lower(), nenv, lambda x: x.name.lower())
        isLocal = type(sym.value) is Index
        if isLocal:
            self.emit.printout(self.emit.emitREADVAR(sym.name, sym.mtype, sym.value.value, frame))
        else:
            self.emit.printout(self.emit.emitGETSTATIC(sym.value.value + '.' + sym.name, sym.mtype, frame))
        expr2Code, expr2Type = self.visit(ast.expr2, Access(frame, nenv, False, True))
        self.emit.printout(expr2Code)
        if ast.up:
            self.emit.printout(self.emit.emitIFICMPGT(breakLabel, frame))
        else:
            self.emit.printout(self.emit.emitIFICMPLT(breakLabel, frame))
        list(map(lambda x: self.visit(x, SubBody(frame, nenv)), ast.loop))
        self.emit.printout(self.emit.emitLABEL(continueLabel, frame))
        step_ = Assign(ast.id, BinaryOp('+', ast.id, IntLiteral(1))) if ast.up else Assign(ast.id, BinaryOp('-', ast.id, IntLiteral(1)))
        self.visit(step_, SubBody(frame, nenv))
        self.emit.printout(self.emit.emitGOTO(labelS, frame))
        self.emit.printout(self.emit.emitLABEL(breakLabel, frame))
        frame.exitLoop()
        return False

    def visitContinue(self, ast, o):
        ctxt = o
        frame, nenv = ctxt.frame, ctxt.sym
        self.emit.printout(self.emit.emitGOTO(frame.getContinueLabel(), frame))
        return True
    
    def visitBreak(self, ast, o):
        ctxt = o
        frame, nenv = ctxt.frame, ctxt.sym
        self.emit.printout(self.emit.emitGOTO(frame.getBreakLabel(), frame))
        return True
    
    def visitReturn(self, ast, o):
        ctxt = o
        frame, nenv = ctxt.frame, ctxt.sym
        if ast.expr is None:
            self.emit.printout(self.emit.emitRETURN(VoidType(), frame))
        else:
            expCode, expType = self.visit(ast.expr, Access(frame, nenv, False, True))
            self.emit.printout(expCode)
            retType = expType
            if isinstance(expType, IntType) and isinstance(frame.returnType, FloatType):
                self.emit.printout(self.emit.emitI2F(frame))
                retType = FloatType()
            self.emit.printout(self.emit.emitRETURN(retType, frame))
        return True
    
    def visitWhile(self, ast, o):
        ctxt = o
        frame, nenv = ctxt.frame, ctxt.sym
        frame.enterLoop()
        continueLabel, breakLabel = frame.getContinueLabel(), frame.getBreakLabel()
        self.emit.printout(self.emit.emitLABEL(continueLabel, frame))
        self.emit.printout(self.visit(ast.exp, Access(frame, nenv, False, True))[0])
        self.emit.printout(self.emit.emitIFFALSE(breakLabel, frame))
        list(map(lambda x: self.visit(x, SubBody(frame, nenv)), ast.sl))
        self.emit.printout(self.emit.emitGOTO(continueLabel, frame))
        self.emit.printout(self.emit.emitLABEL(breakLabel, frame))
        frame.exitLoop()
        return False

    def visitCallStmt(self, ast, o):
        ctxt = o
        frame, nenv = ctxt.frame, ctxt.sym
        sym = self.lookup(ast.method.name.lower(), nenv, lambda x: x.name.lower())
        cName = sym.value.value
        ctype = sym.mtype
        inType = ctype.partype
        for i in range(len(inType)):
            expCode, expType = self.visit(ast.param[i], Access(frame, nenv, False, True))
            self.emit.printout(expCode)
            if isinstance(expType, IntType) and isinstance(inType[i], FloatType):
                self.emit.printout(self.emit.emitI2F(frame))
            if isinstance(expType, ArrayType):
                if type(expType.eleType) is not StringType:
                    self.emit.printout(self.emit.emitCLONE(expType, frame))
        self.emit.printout(self.emit.emitINVOKESTATIC(cName + "/" + sym.name, ctype, frame))
        return False

    def visitBinaryOp(self, ast, o):
        access = o
        frame, nenv = access.frame, access.sym
        leftCode, leftType = self.visit(ast.left, Access(frame, nenv, False, True))
        op = ast.op.lower()
        expCode = ""
        if op in ['+', '-', '*', '/', 'div', 'mod', 'and', 'or']:
            rightCode, rightType = self.visit(ast.right, Access(frame, nenv, False, True))
            expType = FloatType() if type(leftType) != type(rightType) else leftType
            expType = FloatType() if op == '/' else expType
            expCode += leftCode
            if type(leftType) != type(expType):
                expCode += self.emit.emitI2F(frame)
            expCode += rightCode
            if type(rightType) != type(expType):
                expCode += self.emit.emitI2F(frame)
            if op in ['+', '-']:
                expCode += self.emit.emitADDOP(op, expType, frame)
            elif op in ['*', '/']:
                expCode += self.emit.emitMULOP(op, expType, frame)
            elif op == 'div':
                expCode += self.emit.emitDIV(frame)
            elif op == 'mod':
                expCode += self.emit.emitMOD(frame)
            elif op == 'and':
                expCode += self.emit.emitANDOP(frame)
            elif op == 'or':
                expCode += self.emit.emitOROP(frame)
        elif op in ['>', '<', '>=', '<=', '<>', '=']:
            rightCode, rightType = self.visit(ast.right, Access(frame, nenv, False, True))
            expType = BoolType()
            relType = FloatType() if type(leftType) is not type(rightType) else leftType
            expCode += leftCode
            if type(leftType) != type(relType):
                expCode += self.emit.emitI2F(frame)
            expCode += rightCode
            if type(rightType) != type(relType):
                expCode += self.emit.emitI2F(frame)
            expCode += self.emit.emitREOP(op, relType, frame)
        else:
            expType = BoolType()
            expCode += leftCode
            label1 = frame.getNewLabel()
            label2 = frame.getNewLabel()
            expCode += self.emit.emitIFFALSE(label1, frame) if op == 'andthen' else self.emit.emitIFTRUE(label1, frame)
            rightCode, rightType = self.visit(ast.right, Access(frame, nenv, False, True))
            expCode += rightCode
            expCode += self.emit.emitIFFALSE(label1, frame) if op == 'andthen' else self.emit.emitIFTRUE(label1, frame)
            expCode += self.emit.emitPUSHCONST(str(op == 'andthen'), BoolType(), frame)
            expCode += self.emit.emitGOTO(label2, frame)
            expCode += self.emit.emitLABEL(label1, frame)
            expCode += self.emit.emitPUSHCONST(str(op == 'orelse'), BoolType(), frame)
            expCode += self.emit.emitLABEL(label2, frame)
            frame.pop()
        return expCode, expType

    def visitUnaryOp(self, ast, o):
        access = o
        frame, nenv = access.frame, access.sym
        bodyCode, bodyType = self.visit(ast.body, Access(frame, nenv, False, True))
        expCode, expType = bodyCode, bodyType
        if ast.op == '-':
            expCode += self.emit.emitNEGOP(expType, frame)
        else:
            expCode += self.emit.emitNOT(expType, frame)
        return expCode, expType
    
    def visitCallExpr(self, ast, o):
        access = o
        frame, nenv = access.frame, access.sym
        sym = self.lookup(ast.method.name.lower(), nenv, lambda x: x.name.lower())
        cName = sym.value.value
        ctype = sym.mtype
        inType = ctype.partype
        expCode, expType = '', ctype.rettype
        for i in range(len(inType)):
            paramCode, paramType = self.visit(ast.param[i], Access(frame, nenv, False, True))
            expCode += paramCode
            if isinstance(paramType, IntType) and isinstance(inType[i], FloatType):
                expCode += self.emit.emitI2F(frame)
            if isinstance(paramType, ArrayType):
                if type(paramType.eleType) is not StringType:
                    expCode += self.emit.emitCLONE(paramType, frame)
        expCode += self.emit.emitINVOKESTATIC(cName + "/" + sym.name, ctype, frame)
        return expCode, expType
    
    def visitId(self, ast, o):
        access = o
        frame, nenv, isLeft, isFirst = access.frame, access.sym, access.isLeft, access.isFirst
        sym = self.lookup(ast.name.lower(), nenv, lambda x: x.name.lower())
        idType, isLocal = sym.mtype, type(sym.value) is Index
        if isLeft:
            if isLocal:
                self.emit.printout(self.emit.emitWRITEVAR(sym.name, idType, sym.value.value, frame))
            else:
                self.emit.printout(self.emit.emitPUTSTATIC(sym.value.value + '.' + sym.name, idType, frame))
        else:
            if isLocal:
                idCode = self.emit.emitREADVAR(sym.name, idType, sym.value.value, frame)
            else:
                idCode = self.emit.emitGETSTATIC(sym.value.value + '.' + sym.name, idType, frame)
            return idCode, idType

    def visitArrayCell(self, ast, o):
        access = o
        frame, nenv, isLeft, isFirst = access.frame, access.sym, access.isLeft, access.isFirst
        if isLeft and not isFirst:
            isId = type(ast.arr) is Id
            name = ast.arr.name if isId else ast.arr.method.name
            sym = self.lookup(name.lower(), nenv, lambda x: x.name.lower())
            arrType = sym.mtype if isId else sym.mtype.rettype
            frame.push()
            self.emit.printout(self.emit.emitASTORE(arrType.eleType, frame))
        else:
            arrCode, arrType = self.visit(ast.arr, Access(frame, nenv, False, True))
            idxCode, idxType = self.visit(ast.idx, Access(frame, nenv, False, True))
            arrayCellCode = arrCode + idxCode
            arrayCellCode += self.emit.emitPUSHICONST(arrType.lower, frame)
            arrayCellCode += self.emit.emitADDOP('-', IntType(), frame)
            if not isLeft:
                arrayCellCode += self.emit.emitALOAD(arrType.eleType, frame)
            return arrayCellCode, arrType.eleType
    
    def visitIntLiteral(self, ast, o):
        access = o
        frame = access.frame
        return self.emit.emitPUSHICONST(ast.value, frame), IntType()
    
    def visitFloatLiteral(self, ast, o):
        access = o
        frame = access.frame
        return self.emit.emitPUSHFCONST(ast.value, frame), FloatType()

    def visitBooleanLiteral(self, ast, o):
        access = o
        frame = access.frame
        return self.emit.emitPUSHCONST(str(ast.value), BoolType(), frame), BoolType()

    def visitStringLiteral(self, ast, o):
        access = o
        frame = access.frame
        return self.emit.emitPUSHCONST(ast.value, StringType(), frame), StringType()