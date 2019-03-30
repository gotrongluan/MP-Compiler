.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static m I

.method public static isPositive(I)Z
.var 0 is n I from Label0 to Label1
Label0:
	iload_0
	iconst_0
	if_icmple Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	iconst_1
	ireturn
Label4:
	iconst_0
	ireturn
Label1:
.limit stack 2
.limit locals 1
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_2
	putstatic MPClass.m I
	sipush 1000
	ineg
	istore_1
	getstatic MPClass.m I
	invokestatic MPClass/isPositive(I)Z
	invokestatic io/putBoolLn(Z)V
	iload_1
	invokestatic MPClass/isPositive(I)Z
	invokestatic io/putBoolLn(Z)V
Label1:
	return
.limit stack 1
.limit locals 2
.end method

.method public <init>()V
.var 0 is this LMPClass; from Label0 to Label1
Label0:
	aload_0
	invokespecial java/lang/Object/<init>()V
Label1:
	return
.limit stack 1
.limit locals 1
.end method
