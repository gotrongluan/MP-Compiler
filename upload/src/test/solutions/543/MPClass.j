.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a I

.method public static foo(IIZ)V
.var 0 is n I from Label0 to Label1
.var 1 is m I from Label0 to Label1
.var 2 is c Z from Label0 to Label1
Label0:
	iload_0
	invokestatic io/putInt(I)V
	iload_1
	invokestatic io/putInt(I)V
	iload_2
	invokestatic io/putBool(Z)V
Label1:
	return
.limit stack 1
.limit locals 3
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_2
	istore_1
	bipush 12
	istore_2
	sipush 2000
	putstatic MPClass.a I
	iload_1
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	getstatic MPClass.a I
	iload_2
	iadd
	iload_1
	iload_2
	imul
	getstatic MPClass.a I
	idiv
	getstatic MPClass.a I
	irem
	isub
	iload_2
	iadd
	iload_1
	iadd
	getstatic MPClass.a I
	isub
	getstatic MPClass.a I
	iload_1
	if_icmple Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	iload_1
	iload_2
	if_icmpgt Label4
	iconst_1
	goto Label5
Label4:
	iconst_0
Label5:
	imul
	ifeq Label6
	iconst_1
	goto Label7
Label6:
	iconst_0
Label7:
	iload_2
	iload_1
	iadd
	getstatic MPClass.a I
	if_icmpeq Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	iadd
	ifne Label10
	iconst_0
	goto Label11
Label10:
	iconst_1
Label11:
	invokestatic MPClass/foo(IIZ)V
Label1:
	return
.limit stack 5
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
