.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static pow(II)I
.var 0 is a I from Label0 to Label1
.var 1 is n I from Label0 to Label1
Label0:
	iconst_1
	istore_2
	iconst_1
	istore_3
Label4:
	iload_3
	iload_1
	if_icmpgt Label3
	iload_2
	iload_0
	imul
	istore_2
Label2:
	iload_3
	iconst_1
	iadd
	istore_3
	goto Label4
Label3:
	iload_2
	ireturn
Label1:
.limit stack 2
.limit locals 4
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_2
	iconst_3
	invokestatic MPClass/pow(II)I
	invokestatic io/putIntLn(I)V
	bipush 7
	iconst_0
	invokestatic MPClass/pow(II)I
	invokestatic io/putIntLn(I)V
	iconst_5
	bipush 7
	invokestatic MPClass/pow(II)I
	invokestatic io/putIntLn(I)V
Label1:
	return
.limit stack 2
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
