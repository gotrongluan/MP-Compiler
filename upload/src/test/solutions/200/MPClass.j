.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 8
	istore_1
Label4:
	iload_1
	iconst_1
	if_icmplt Label3
	iload_1
	iconst_5
	if_icmpge Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	ifeq Label7
	goto Label2
Label7:
	iload_1
	invokestatic io/putInt(I)V
Label2:
	iload_1
	iconst_1
	isub
	istore_1
	goto Label4
Label3:
	iload_1
	invokestatic io/putInt(I)V
Label1:
	return
.limit stack 2
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
