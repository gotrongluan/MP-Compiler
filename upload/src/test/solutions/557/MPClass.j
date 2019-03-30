.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static factorial(I)I
.var 0 is n I from Label0 to Label1
Label0:
	iload_0
	iconst_0
	if_icmpne Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	iload_0
	iconst_1
	if_icmpne Label4
	iconst_1
	goto Label5
Label4:
	iconst_0
Label5:
	iadd
	ifne Label6
	iconst_0
	goto Label7
Label6:
	iconst_1
Label7:
	ifeq Label8
	iconst_1
	ireturn
Label8:
	iload_0
	iload_0
	iconst_1
	isub
	invokestatic MPClass/factorial(I)I
	imul
	ireturn
Label1:
.limit stack 3
.limit locals 1
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 6
	istore_1
	iconst_4
	invokestatic MPClass/factorial(I)I
	invokestatic io/putInt(I)V
	iload_1
	invokestatic MPClass/factorial(I)I
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
