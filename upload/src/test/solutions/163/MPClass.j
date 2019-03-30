.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_0
	ifne Label2
	iconst_0
	ifne Label2
	iconst_0
	goto Label3
Label2:
	iconst_1
Label3:
	ifne Label4
	iconst_1
	ifne Label4
	iconst_0
	goto Label5
Label4:
	iconst_1
Label5:
	ifeq Label6
	iconst_1
	ifne Label8
	iconst_0
	ifne Label8
	iconst_0
	goto Label9
Label8:
	iconst_1
Label9:
	iconst_0
	ifne Label10
	iconst_1
	ifne Label10
	iconst_0
	goto Label11
Label10:
	iconst_1
Label11:
	imul
	ifeq Label12
	iconst_1
	goto Label13
Label12:
	iconst_0
Label13:
	ifeq Label6
	iconst_1
	goto Label7
Label6:
	iconst_0
Label7:
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
