.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static foo1()V
Label0:
	iconst_2
	istore_0
Label4:
	iload_0
	bipush 100
	if_icmpgt Label3
	iload_0
	bipush 8
	if_icmplt Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	ifeq Label7
.var 1 is j I from Label8 to Label9
Label8:
	goto Label3
Label9:
Label7:
	iload_0
	invokestatic io/putInt(I)V
Label2:
	iload_0
	iconst_1
	iadd
	istore_0
	goto Label4
Label3:
	invokestatic MPClass/foo2()V
Label1:
	return
.limit stack 2
.limit locals 2
.end method

.method public static foo2()V
Label0:
	ldc "Ocaml"
	invokestatic io/putString(Ljava/lang/String;)V
	ldc "Ada"
	invokestatic io/putString(Ljava/lang/String;)V
Label1:
	return
.limit stack 1
.limit locals 0
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	invokestatic MPClass/foo1()V
Label1:
	return
.limit stack 0
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
