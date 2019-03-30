.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static pow(II)I
.var 0 is a I from Label0 to Label1
.var 1 is n I from Label0 to Label1
Label0:
	iload_1
	iconst_0
	if_icmpne Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	iconst_1
	ireturn
Label4:
	iload_1
	iconst_1
	if_icmpne Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	ifeq Label7
	iload_0
	ireturn
Label7:
	iload_0
	iload_1
	iconst_2
	idiv
	invokestatic MPClass/pow(II)I
	istore_2
	iload_1
	iconst_2
	irem
	iconst_0
	if_icmpeq Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	ifeq Label10
	iload_0
	iload_2
	imul
	iload_2
	imul
	ireturn
Label10:
	iload_2
	iload_2
	imul
	ireturn
Label1:
.limit stack 3
.limit locals 3
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_2
	iconst_0
	invokestatic MPClass/pow(II)I
	invokestatic io/putInt(I)V
	iconst_3
	iconst_3
	invokestatic MPClass/pow(II)I
	invokestatic io/putInt(I)V
	bipush 100
	iconst_1
	invokestatic MPClass/pow(II)I
	invokestatic io/putInt(I)V
	iconst_2
	bipush 7
	invokestatic MPClass/pow(II)I
	invokestatic io/putInt(I)V
	iconst_5
	iconst_2
	invokestatic MPClass/pow(II)I
	invokestatic io/putInt(I)V
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
