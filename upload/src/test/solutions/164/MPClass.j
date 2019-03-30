.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_1
	istore_1
	iload_1
	invokestatic io/putIntLn(I)V
	iconst_2
	istore_2
	iload_2
	istore_1
	iload_2
	invokestatic io/putIntLn(I)V
	iload_1
	invokestatic io/putIntLn(I)V
	iload_2
	iconst_1
	iadd
	istore_1
	iload_1
	invokestatic io/putIntLn(I)V
Label1:
	return
.limit stack 2
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
