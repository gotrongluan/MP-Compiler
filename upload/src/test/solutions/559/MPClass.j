.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static toFloat(F)F
.var 0 is n F from Label0 to Label1
Label0:
	fload_0
	freturn
Label1:
.limit stack 1
.limit locals 1
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	ldc 1611931
	istore_1
	iconst_5
	i2f
	invokestatic MPClass/toFloat(F)F
	invokestatic io/putFloat(F)V
	iload_1
	i2f
	invokestatic MPClass/toFloat(F)F
	invokestatic io/putFloat(F)V
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
