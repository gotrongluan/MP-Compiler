.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a I

.method public static foo(I)V
.var 0 is n I from Label0 to Label1
Label0:
	iload_0
	i2f
	invokestatic io/putFloat(F)V
Label1:
	return
.limit stack 1
.limit locals 1
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_2
	istore_1
	bipush 12
	istore_2
	sipush 2000
	putstatic MPClass.a I
	iload_2
	iload_1
	getstatic MPClass.a I
	idiv
	iadd
	iload_2
	isub
	iload_1
	getstatic MPClass.a I
	irem
	isub
	iload_1
	iload_1
	imul
	iadd
	invokestatic MPClass/foo(I)V
Label1:
	return
.limit stack 3
.limit locals 3
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
