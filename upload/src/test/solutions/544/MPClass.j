.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a I

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_1
	putstatic MPClass.a I
	invokestatic MPClass/abc()I
	invokestatic MPClass/xyz()I
	iadd
	istore_1
	invokestatic MPClass/abc()I
	invokestatic MPClass/xyz()I
	isub
	istore_2
	invokestatic MPClass/abc()I
	invokestatic MPClass/xyz()I
	imul
	istore_3
	invokestatic MPClass/abc()I
	i2f
	invokestatic MPClass/xyz()I
	i2f
	fdiv
	fstore 6
	invokestatic MPClass/abc()I
	invokestatic MPClass/xyz()I
	idiv
	istore 4
	invokestatic MPClass/abc()I
	invokestatic MPClass/xyz()I
	irem
	istore 5
	getstatic MPClass.a I
	invokestatic io/putInt(I)V
	iload_1
	invokestatic io/putInt(I)V
	iload_2
	invokestatic io/putInt(I)V
	iload_3
	invokestatic io/putInt(I)V
	iload 4
	invokestatic io/putInt(I)V
	iload 5
	invokestatic io/putInt(I)V
	fload 6
	invokestatic io/putFloat(F)V
Label1:
	return
.limit stack 2
.limit locals 7
.end method

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
	ireturn
Label1:
.limit stack 1
.limit locals 0
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
