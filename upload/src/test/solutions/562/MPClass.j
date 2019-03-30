.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static isPrime(I)Z
.var 0 is n I from Label0 to Label1
Label0:
	iload_0
	iconst_2
	if_icmpge Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	iconst_0
	ireturn
Label4:
	iload_0
	iconst_2
	if_icmpne Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	ifeq Label7
	iconst_1
	ireturn
Label7:
	iconst_2
	istore_1
Label10:
	iload_1
	iload_0
	iconst_1
	isub
	if_icmpgt Label9
	iload_0
	iload_1
	irem
	iconst_0
	if_icmpne Label11
	iconst_1
	goto Label12
Label11:
	iconst_0
Label12:
	ifeq Label13
	iconst_0
	ireturn
Label13:
Label8:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label10
Label9:
	iconst_1
	ireturn
Label1:
.limit stack 3
.limit locals 2
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_2
	invokestatic MPClass/isPrime(I)Z
	invokestatic io/putBool(Z)V
	iconst_1
	ineg
	invokestatic MPClass/isPrime(I)Z
	invokestatic io/putBool(Z)V
	bipush 7
	invokestatic MPClass/isPrime(I)Z
	invokestatic io/putBool(Z)V
	bipush 23
	invokestatic MPClass/isPrime(I)Z
	invokestatic io/putBool(Z)V
	bipush 100
	invokestatic MPClass/isPrime(I)Z
	invokestatic io/putBool(Z)V
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
