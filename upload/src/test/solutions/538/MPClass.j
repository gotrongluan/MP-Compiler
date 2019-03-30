.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a F

.method public static swap(FF)V
.var 0 is a F from Label0 to Label1
.var 1 is b F from Label0 to Label1
Label0:
	fload_0
	fstore_2
	fload_1
	fstore_0
	fload_2
	fstore_1
Label1:
	return
.limit stack 1
.limit locals 3
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	ldc 0.5
	iconst_2
	i2f
	invokestatic MPClass/swap(FF)V
	ldc 2.5
	putstatic MPClass.a F
	ldc 2.5
	fneg
	fstore_1
	getstatic MPClass.a F
	invokestatic io/putFloat(F)V
	fload_1
	invokestatic io/putFloat(F)V
	getstatic MPClass.a F
	fload_1
	invokestatic MPClass/swap(FF)V
	getstatic MPClass.a F
	invokestatic io/putFloat(F)V
	fload_1
	invokestatic io/putFloat(F)V
Label1:
	return
.limit stack 2
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
