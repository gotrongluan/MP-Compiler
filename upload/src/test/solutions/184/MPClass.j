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
	iconst_0
	ifeq Label3
	bipush 100
	invokestatic io/putInt(I)V
	goto Label4
Label3:
	iconst_1
	ifeq Label5
	sipush 200
	invokestatic io/putInt(I)V
	goto Label6
Label5:
	sipush 300
	invokestatic io/putInt(I)V
Label6:
Label4:
	goto Label7
Label2:
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
	iconst_1
	ifeq Label12
	sipush 200
	invokestatic io/putInt(I)V
	iconst_0
	ifeq Label13
	bipush 100
	invokestatic io/putInt(I)V
	goto Label14
Label13:
	iconst_1
	ifeq Label15
	sipush 200
	invokestatic io/putInt(I)V
	goto Label16
Label15:
	sipush 300
	invokestatic io/putInt(I)V
Label16:
Label14:
	goto Label17
Label12:
	sipush 300
	invokestatic io/putInt(I)V
Label17:
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
