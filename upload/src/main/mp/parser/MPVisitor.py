# Generated from main/mp/parser/MP.g4 by ANTLR 4.7.1
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .MPParser import MPParser
else:
    from MPParser import MPParser

# This class defines a complete generic visitor for a parse tree produced by MPParser.

class MPVisitor(ParseTreeVisitor):

    # Visit a parse tree produced by MPParser#mptype.
    def visitMptype(self, ctx:MPParser.MptypeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#program.
    def visitProgram(self, ctx:MPParser.ProgramContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#declare.
    def visitDeclare(self, ctx:MPParser.DeclareContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#variable_declare.
    def visitVariable_declare(self, ctx:MPParser.Variable_declareContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#sub_vardecl.
    def visitSub_vardecl(self, ctx:MPParser.Sub_vardeclContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#function_declare.
    def visitFunction_declare(self, ctx:MPParser.Function_declareContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#procedure_declare.
    def visitProcedure_declare(self, ctx:MPParser.Procedure_declareContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#parameter_list.
    def visitParameter_list(self, ctx:MPParser.Parameter_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#parameter_declare.
    def visitParameter_declare(self, ctx:MPParser.Parameter_declareContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#array_type.
    def visitArray_type(self, ctx:MPParser.Array_typeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#exp_list.
    def visitExp_list(self, ctx:MPParser.Exp_listContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#exp.
    def visitExp(self, ctx:MPParser.ExpContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#exp_one.
    def visitExp_one(self, ctx:MPParser.Exp_oneContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#exp_two.
    def visitExp_two(self, ctx:MPParser.Exp_twoContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#index_exp.
    def visitIndex_exp(self, ctx:MPParser.Index_expContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#statement.
    def visitStatement(self, ctx:MPParser.StatementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#lhs_assignment.
    def visitLhs_assignment(self, ctx:MPParser.Lhs_assignmentContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#assignment_statement.
    def visitAssignment_statement(self, ctx:MPParser.Assignment_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#if_statement.
    def visitIf_statement(self, ctx:MPParser.If_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#while_statement.
    def visitWhile_statement(self, ctx:MPParser.While_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#for_statement.
    def visitFor_statement(self, ctx:MPParser.For_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#break_statement.
    def visitBreak_statement(self, ctx:MPParser.Break_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#continue_statement.
    def visitContinue_statement(self, ctx:MPParser.Continue_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#return_statement.
    def visitReturn_statement(self, ctx:MPParser.Return_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#compound_statement.
    def visitCompound_statement(self, ctx:MPParser.Compound_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#with_statement.
    def visitWith_statement(self, ctx:MPParser.With_statementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#call_exp.
    def visitCall_exp(self, ctx:MPParser.Call_expContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by MPParser#funcall.
    def visitFuncall(self, ctx:MPParser.FuncallContext):
        return self.visitChildren(ctx)



del MPParser