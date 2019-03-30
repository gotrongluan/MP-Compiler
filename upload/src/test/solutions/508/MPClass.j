.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static t F

.method public static foo(I)I
.var 0 is n I from Label0 to Label1
Label0:
	iload_0
	iconst_1
	isub
	ireturn
Label1:
.limit stack 2
.limit locals 1
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_3
	newarray float
	astore_1
	aload_1
	iconst_0
	iconst_0
	isub
	ldc 2.5
	fastore
	aload_1
	iconst_0
	iconst_0
	isub
	faload
	fneg
	putstatic MPClass.t F
	aload_1
	iconst_1
	iconst_0
	isub
	iconst_2
	invokestatic MPClass/foo(I)I
	i2f
	fastore
	aload_1
	iconst_1
	iconst_0
	isub
	iconst_5
	invokestatic MPClass/foo(I)I
	i2f
	fastore
	aload_1
	iconst_2
	iconst_0
	isub
	aload_1
	iconst_1
	iconst_0
	isub
	faload
	fastore
	getstatic MPClass.t F
	invokestatic io/putFloat(F)V
	aload_1
	iconst_0
	iconst_0
	isub
	faload
	invokestatic io/putFloat(F)V
	aload_1
	iconst_1
	iconst_0
	isub
	faload
	invokestatic io/putFloat(F)V
	aload_1
	iconst_2
	iconst_0
	isub
	faload
	invokestatic io/putFloat(F)V
Label1:
	return
.limit stack 8
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
