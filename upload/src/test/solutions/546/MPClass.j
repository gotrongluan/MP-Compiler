.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a I

.method public static abc()F
Label0:
	getstatic MPClass.a I
	iconst_1
	iadd
	putstatic MPClass.a I
	ldc 2.5
	freturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static xyz()F
Label0:
	getstatic MPClass.a I
	iconst_2
	isub
	putstatic MPClass.a I
	ldc 3.2
	freturn
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
	bipush 10
	putstatic MPClass.a I
	invokestatic MPClass/abc()F
	invokestatic MPClass/xyz()F
	fsub
	invokestatic MPClass/mnp()I
	i2f
	invokestatic MPClass/abc()F
	fdiv
	fadd
	fstore_1
	fload_1
	invokestatic io/putFloat(F)V
	getstatic MPClass.a I
	invokestatic MPClass/mnp()I
	irem
	i2f
	invokestatic MPClass/abc()F
	fmul
	invokestatic MPClass/mnp()I
	i2f
	fsub
	fstore_1
	fload_1
	invokestatic io/putFloat(F)V
	invokestatic MPClass/mnp()I
	i2f
	invokestatic MPClass/mnp()I
	i2f
	invokestatic MPClass/abc()F
	fdiv
	fsub
	invokestatic MPClass/xyz()F
	fsub
	invokestatic MPClass/abc()F
	invokestatic MPClass/xyz()F
	fdiv
	fadd
	getstatic MPClass.a I
	i2f
	fadd
	fstore_1
	fload_1
	invokestatic io/putFloat(F)V
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
