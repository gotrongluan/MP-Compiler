.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_0
	i2f
	invokestatic io/putFloat(F)V
	ldc 1.3
	fneg
	invokestatic io/putFloat(F)V
	ldc 10020.0
	fneg
	invokestatic io/putFloat(F)V
	ldc 7.77
	fneg
	invokestatic io/putFloat(F)V
	ldc 2222.2222
	invokestatic io/putFloat(F)V
Label1:
	return
.limit stack 1
.limit locals 1
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
