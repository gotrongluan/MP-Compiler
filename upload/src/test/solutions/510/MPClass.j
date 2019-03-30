.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static t I
.field static x F

.method public static foo(I)I
.var 0 is n I from Label0 to Label1
Label0:
	iload_0
	iconst_5
	if_icmpge Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	iload_0
	iconst_5
	iadd
	ireturn
Label4:
	iload_0
	iconst_5
	isub
	ireturn
Label1:
.limit stack 2
.limit locals 1
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 101
	newarray float
	astore_1
	aload_1
	iconst_0
	bipush -100
	isub
	ldc 1.2
	fastore
	aload_1
	iconst_1
	ineg
	bipush -100
	isub
	aload_1
	iconst_0
	bipush -100
	isub
	faload
	iconst_2
	invokestatic MPClass/foo(I)I
	i2f
	fadd
	fastore
	aload_1
	iconst_1
	ineg
	bipush -100
	isub
	faload
	putstatic MPClass.x F
	iconst_0
	invokestatic MPClass/foo(I)I
	putstatic MPClass.t I
	aload_1
	iconst_2
	ineg
	bipush -100
	isub
	getstatic MPClass.t I
	i2f
	fastore
	aload_1
	bipush 100
	ineg
	bipush -100
	isub
	iconst_2
	invokestatic MPClass/foo(I)I
	iconst_1
	invokestatic MPClass/foo(I)I
	isub
	getstatic MPClass.t I
	invokestatic MPClass/foo(I)I
	iadd
	i2f
	fastore
	aload_1
	bipush 100
	ineg
	bipush -100
	isub
	faload
	invokestatic io/putFloatLn(F)V
	getstatic MPClass.t I
	invokestatic io/putIntLn(I)V
	getstatic MPClass.x F
	invokestatic io/putFloatLn(F)V
	aload_1
	iconst_1
	ineg
	bipush -100
	isub
	faload
	invokestatic io/putFloat(F)V
	aload_1
	iconst_2
	ineg
	bipush -100
	isub
	faload
	invokestatic io/putFloat(F)V
Label1:
	return
.limit stack 7
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
