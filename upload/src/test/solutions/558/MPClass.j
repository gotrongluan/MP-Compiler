.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static sum(I)I
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
	iload_0
	iadd
	istore_1
	iload_0
	iconst_1
	isub
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
	bipush 10
	istore_1
	iload_1
	invokestatic MPClass/sum(I)I
	invokestatic io/putInt(I)V
	iload_1
	invokestatic io/putInt(I)V
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
