.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_0
	iconst_1
	iconst_0
	imul
	ifeq Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	iadd
	ifne Label4
	iconst_0
	goto Label5
Label4:
	iconst_1
Label5:
	iconst_0
	iconst_1
	imul
	ifeq Label6
	iconst_1
	goto Label7
Label6:
	iconst_0
Label7:
	iadd
	ifne Label8
	iconst_0
	goto Label9
Label8:
	iconst_1
Label9:
	invokestatic io/putBool(Z)V
Label1:
	return
.limit stack 3
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