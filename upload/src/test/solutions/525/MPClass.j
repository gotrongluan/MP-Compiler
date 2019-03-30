.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static foo(II)I
.var 0 is a I from Label0 to Label1
.var 1 is b I from Label0 to Label1
Label0:
	iload_0
	iload_1
	if_icmple Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	iconst_0
	ireturn
Label4:
	iconst_1
	ireturn
Label1:
.limit stack 2
.limit locals 2
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_2
	bipush 12
	invokestatic MPClass/foo(II)I
	istore_2
Label4:
	iload_2
	bipush 10
	if_icmpgt Label3
	iload_2
	iconst_4
	if_icmpge Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	ifeq Label7
	goto Label2
Label7:
	iload_2
	invokestatic io/putInt(I)V
Label2:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label4
Label3:
	ldc "HCMUT"
	invokestatic io/putStringLn(Ljava/lang/String;)V
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
