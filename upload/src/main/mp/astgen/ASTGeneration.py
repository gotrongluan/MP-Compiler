from MPVisitor import MPVisitor
from MPParser import MPParser
from AST import *
from functools import reduce 

class ASTGeneration(MPVisitor):
    # Visit a parse tree produced by MPParser#mptype.
    def visitMptype(self, ctx:MPParser.MptypeContext):
        return BoolType() if ctx.BOOLEAN() else IntType() if ctx.INTEGER() else FloatType() if ctx.REAL() else StringType() if ctx.STRING() else self.visit(ctx.array_type())


    # Visit a parse tree produced by MPParser#program.
    def visitProgram(self, ctx:MPParser.ProgramContext):
        return Program(reduce(lambda x, y: x + y if type(y) == list else x + [y] , [self.visit(t) for t in ctx.declare()], []))


    # Visit a parse tree produced by MPParser#declare.
    def visitDeclare(self, ctx:MPParser.DeclareContext):
        return self.visit(ctx.variable_declare()) if ctx.variable_declare() else self.visit(ctx.function_declare()) if ctx.function_declare() else self.visit(ctx.procedure_declare())


    # Visit a parse tree produced by MPParser#variable_declare.
    def visitVariable_declare(self, ctx:MPParser.Variable_declareContext):
        return reduce(lambda x, y: x + y, [self.visit(t) for t in ctx.sub_vardecl()])


    # Visit a parse tree produced by MPParser#sub_vardecl.
    def visitSub_vardecl(self, ctx:MPParser.Sub_vardeclContext):
        varType = self.visit(ctx.mptype())
        return [VarDecl(Id(t.getText()), varType) for t in ctx.IDEN()]


    # Visit a parse tree produced by MPParser#function_declare.
    def visitFunction_declare(self, ctx:MPParser.Function_declareContext):
        local = self.visit(ctx.variable_declare()) if ctx.variable_declare() else []
        return FuncDecl(Id(ctx.IDEN().getText()), self.visit(ctx.parameter_list()), local, self.visit(ctx.compound_statement()), self.visit(ctx.mptype()))


    # Visit a parse tree produced by MPParser#procedure_declare.
    def visitProcedure_declare(self, ctx:MPParser.Procedure_declareContext):
        local = self.visit(ctx.variable_declare()) if ctx.variable_declare() else []
        return FuncDecl(Id(ctx.IDEN().getText()), self.visit(ctx.parameter_list()), local, self.visit(ctx.compound_statement()))


    # Visit a parse tree produced by MPParser#parameter_list.
    def visitParameter_list(self, ctx:MPParser.Parameter_listContext):
        return [] if ctx.getChildCount() == 0 else reduce(lambda x, y: x + y, [self.visit(t) for t in ctx.parameter_declare()])


    # Visit a parse tree produced by MPParser#parameter_declare.
    def visitParameter_declare(self, ctx:MPParser.Parameter_declareContext):
        varType = self.visit(ctx.mptype())
        return [VarDecl(Id(t.getText()), varType) for t in ctx.IDEN()]


    # Visit a parse tree produced by MPParser#array_type.
    def visitArray_type(self, ctx:MPParser.Array_typeContext):
        lower = int(ctx.INTLIT(0).getText()) * (-1 if ctx.getChild(2).getText() == '-' else 1)
        upper = int(ctx.INTLIT(1).getText()) * (-1 if ctx.SUB() and (len(ctx.SUB()) == 2 or ctx.getChild(2).getText() != '-') else 1)
        eleType = IntType() if ctx.INTEGER() else BoolType() if ctx.BOOLEAN() else FloatType() if ctx.REAL() else StringType()
        return ArrayType(lower, upper, eleType)


    # Visit a parse tree produced by MPParser#exp_list.
    def visitExp_list(self, ctx:MPParser.Exp_listContext):
        return [self.visit(t) for t in ctx.exp()]


    # Visit a parse tree produced by MPParser#exp.
    def visitExp(self, ctx:MPParser.ExpContext):
        op = "andthen" if ctx.AND() else "orelse"
        return BinaryOp(op, self.visit(ctx.exp(0)), self.visit(ctx.exp(1))) if ctx.getChildCount() > 1 else self.visit(ctx.exp_one())


    # Visit a parse tree produced by MPParser#exp_one.
    def visitExp_one(self, ctx:MPParser.Exp_oneContext):
        return BinaryOp(ctx.getChild(1).getText(), self.visit(ctx.exp_two(0)), self.visit(ctx.exp_two(1))) if ctx.getChildCount() > 1 else self.visit(ctx.exp_two(0))


    # Visit a parse tree produced by MPParser#exp_two.
    def visitExp_two(self, ctx:MPParser.Exp_twoContext):
        if ctx.STRINGLIT():
            return StringLiteral(ctx.STRINGLIT().getText())
        if ctx.INTLIT():
            return IntLiteral(int(ctx.INTLIT().getText()))
        if ctx.REALLIT():
            return FloatLiteral(float(ctx.REALLIT().getText()))
        if ctx.TRUE():
            return BooleanLiteral(True)
        if ctx.FALSE():
            return BooleanLiteral(False)
        if ctx.IDEN():
            return Id(ctx.IDEN().getText())
        if ctx.call_exp():
            return self.visit(ctx.call_exp())
        if ctx.index_exp():
            return self.visit(ctx.index_exp())
        if ctx.NOT():
            return UnaryOp(ctx.NOT().getText(), self.visit(ctx.exp_two(0)))
        if ctx.getChildCount() == 2:
            return UnaryOp(ctx.SUB().getText(), self.visit(ctx.exp_two(0)))
        if ctx.exp():
            return self.visit(ctx.exp())
        return BinaryOp(ctx.getChild(1).getText(), self.visit(ctx.exp_two(0)), self.visit(ctx.exp_two(1)))


    # Visit a parse tree produced by MPParser#index_exp.
    def visitIndex_exp(self, ctx:MPParser.Index_expContext):
        indexExpCxt = 0
        if ctx.STRINGLIT():
            arr = StringLiteral(ctx.STRINGLIT().getText())
        elif ctx.REALLIT():
            arr = FloatLiteral(float(ctx.REALLIT().getText()))
        elif ctx.INTLIT():
            arr = IntLiteral(int(ctx.INTLIT().getText()))
        elif ctx.TRUE():
            arr = BooleanLiteral(True)
        elif ctx.FALSE():
            arr = BooleanLiteral(False)
        elif ctx.IDEN():
            arr = Id(ctx.IDEN().getText())
        elif ctx.call_exp():
            arr = self.visit(ctx.call_exp())
        elif ctx.index_exp():
            arr = self.visit(ctx.index_exp())
        else:
            arr = self.visit(ctx.exp(0))
            indexExpCxt = 1
        return ArrayCell(arr, self.visit(ctx.exp(indexExpCxt)))


    # Visit a parse tree produced by MPParser#statement.
    def visitStatement(self, ctx:MPParser.StatementContext):
        return self.visit(ctx.getChild(0))


    # Visit a parse tree produced by MPParser#lhs_assignment.
    def visitLhs_assignment(self, ctx:MPParser.Lhs_assignmentContext):
        return Id(ctx.IDEN().getText()) if ctx.IDEN() else self.visit(ctx.index_exp())


    # Visit a parse tree produced by MPParser#assignment_statement.
    def visitAssignment_statement(self, ctx:MPParser.Assignment_statementContext):
        lhsCxtList = ctx.lhs_assignment()[::-1]
        lhsCxtAndTypeList = [ctx.exp()] + lhsCxtList[:-1]
        return [Assign(self.visit(x), self.visit(y)) for x, y in zip(lhsCxtList, lhsCxtAndTypeList)]


    # Visit a parse tree produced by MPParser#if_statement.
    def visitIf_statement(self, ctx:MPParser.If_statementContext):
        thenStmt = self.visit(ctx.statement(0))
        thenStmt = thenStmt if type(thenStmt) == list else [thenStmt]
        if ctx.ELSE():
            elseStmt = self.visit(ctx.statement(1))
            elseStmt = elseStmt if type(elseStmt) == list else [elseStmt]
            return If(self.visit(ctx.exp()), thenStmt, elseStmt)
        return If(self.visit(ctx.exp()), thenStmt)


    # Visit a parse tree produced by MPParser#while_statement.
    def visitWhile_statement(self, ctx:MPParser.While_statementContext):
        stmt = self.visit(ctx.statement())
        listStmt = stmt if type(stmt) == list else [stmt]
        return While(self.visit(ctx.exp()), listStmt)


    # Visit a parse tree produced by MPParser#for_statement.
    def visitFor_statement(self, ctx:MPParser.For_statementContext):
        stmt = self.visit(ctx.statement())
        listStmt = stmt if type(stmt) == list else [stmt]
        return For(Id(ctx.IDEN().getText()), self.visit(ctx.exp(0)), self.visit(ctx.exp(1)), bool(ctx.TO()), listStmt)


    # Visit a parse tree produced by MPParser#break_statement.
    def visitBreak_statement(self, ctx:MPParser.Break_statementContext):
        return Break()


    # Visit a parse tree produced by MPParser#continue_statement.
    def visitContinue_statement(self, ctx:MPParser.Continue_statementContext):
        return Continue()


    # Visit a parse tree produced by MPParser#return_statement.
    def visitReturn_statement(self, ctx:MPParser.Return_statementContext):
        return Return(self.visit(ctx.exp())) if ctx.exp() else Return()


    # Visit a parse tree produced by MPParser#compound_statement.
    def visitCompound_statement(self, ctx:MPParser.Compound_statementContext):
        return reduce(lambda x, y: x + y if type(y) == list else x + [y], [self.visit(t) for t in ctx.statement()], [])


    # Visit a parse tree produced by MPParser#with_statement.
    def visitWith_statement(self, ctx:MPParser.With_statementContext):
        stmt = self.visit(ctx.statement())
        withStmt = stmt if type(stmt) == list else [stmt]
        return With(reduce(lambda x, y: x + y, [self.visit(t) for t in ctx.parameter_declare()]), withStmt)


    # Visit a parse tree produced by MPParser#call_exp.
    def visitCall_exp(self, ctx:MPParser.Call_expContext):
        return CallExpr(Id(ctx.IDEN().getText()), self.visit(ctx.exp_list()))


    # Visit a parse tree produced by MPParser#funcall.
    def visitFuncall(self, ctx:MPParser.FuncallContext):
        callExp = self.visit(ctx.call_exp())
        return CallStmt(callExp.method, callExp.param)