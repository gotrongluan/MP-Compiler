.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_1
	ifeq Label2
	bipush 100
	invokestatic io/putInt(I)V
	goto Label3
Label2:
	iconst_1
	ifeq Label4
	sipush 200
	invokestatic io/putInt(I)V
	goto Label5
Label4:
	sipush 300
	invokestatic io/putInt(I)V
Label5:
Label3:
	iconst_0
	ifeq Label6
	bipush 100
	invokestatic io/putInt(I)V
	goto Label7
Label6:
	iconst_1
	ifeq Label8
	sipush 200
	invokestatic io/putInt(I)V
	goto Label9
Label8:
	sipush 300
	invokestatic io/putInt(I)V
Label9:
Label7:
	iconst_0
	ifeq Label10
	bipush 100
	invokestatic io/putInt(I)V
	goto Label11
Label10:
	iconst_0
	ifeq Label12
	sipush 200
	invokestatic io/putInt(I)V
	goto Label13
Label12:
	sipush 300
	invokestatic io/putInt(I)V
Label13:
Label11:
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
