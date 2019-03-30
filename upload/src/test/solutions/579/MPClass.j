.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static count(I)I
.var 0 is n I from Label0 to Label1
Label0:
	iconst_0
	istore_1
Label2:
	iload_0
	iconst_0
	if_icmple Label4
	iconst_1
	goto Label5
Label4:
	iconst_0
Label5:
	ifeq Label3
	iload_1
	iconst_1
	iadd
	istore_1
	iload_0
	bipush 10
	idiv
	istore_0
	goto Label2
Label3:
	iload_1
	ireturn
Label1:
.limit stack 2
.limit locals 2
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	ldc 1611931
	invokestatic MPClass/count(I)I
	invokestatic io/putInt(I)V
	ldc 2122000
	invokestatic MPClass/count(I)I
	invokestatic io/putInt(I)V
	ldc 16111998
	invokestatic MPClass/count(I)I
	invokestatic io/putInt(I)V
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
