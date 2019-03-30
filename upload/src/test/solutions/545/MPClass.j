.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a I

.method public static abc()I
Label0:
	getstatic MPClass.a I
	iconst_1
	iadd
	putstatic MPClass.a I
	iconst_2
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static xyz()I
Label0:
	getstatic MPClass.a I
	iconst_2
	isub
	putstatic MPClass.a I
	iconst_3
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static mnp()I
Label0:
	getstatic MPClass.a I
	iconst_2
	iadd
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 20
	putstatic MPClass.a I
	invokestatic MPClass/abc()I
	invokestatic MPClass/xyz()I
	isub
	invokestatic MPClass/mnp()I
	invokestatic MPClass/abc()I
	idiv
	iadd
	istore_1
	iload_1
	invokestatic io/putInt(I)V
	invokestatic MPClass/xyz()I
	invokestatic MPClass/mnp()I
	irem
	invokestatic MPClass/abc()I
	imul
	invokestatic MPClass/mnp()I
	isub
	istore_1
	iload_1
	invokestatic io/putInt(I)V
	invokestatic MPClass/mnp()I
	invokestatic MPClass/mnp()I
	invokestatic MPClass/abc()I
	imul
	isub
	invokestatic MPClass/xyz()I
	isub
	invokestatic MPClass/abc()I
	invokestatic MPClass/xyz()I
	imul
	iadd
	getstatic MPClass.a I
	iadd
	istore_1
	iload_1
	invokestatic io/putInt(I)V
Label1:
	return
.limit stack 3
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
