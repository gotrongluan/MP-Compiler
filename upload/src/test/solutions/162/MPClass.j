.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_1
	ifeq Label2
	iconst_0
	ifeq Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	invokestatic io/putBoolLn(Z)V
	iconst_0
	ifeq Label4
	iconst_1
	ifeq Label4
	iconst_1
	goto Label5
Label4:
	iconst_0
Label5:
	invokestatic io/putBoolLn(Z)V
	iconst_1
	ifeq Label6
	iconst_0
	ifeq Label8
	iconst_1
	ifeq Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	ifeq Label6
	iconst_1
	goto Label7
Label6:
	iconst_0
Label7:
	invokestatic io/putBoolLn(Z)V
	iconst_1
	ifeq Label10
	iconst_0
	ifeq Label12
	iconst_1
	ifeq Label12
	iconst_1
	goto Label13
Label12:
	iconst_0
Label13:
	ifeq Label10
	iconst_1
	goto Label11
Label10:
	iconst_0
Label11:
	ifeq Label14
	iconst_0
	ifeq Label14
	iconst_1
	goto Label15
Label14:
	iconst_0
Label15:
	invokestatic io/putBoolLn(Z)V
	iconst_1
	ifne Label16
	iconst_0
	ifne Label16
	iconst_0
	goto Label17
Label16:
	iconst_1
Label17:
	invokestatic io/putBoolLn(Z)V
	iconst_0
	ifne Label18
	iconst_1
	ifne Label18
	iconst_0
	goto Label19
Label18:
	iconst_1
Label19:
	invokestatic io/putBoolLn(Z)V
	iconst_1
	ifne Label20
	iconst_0
	ifne Label22
	iconst_1
	ifne Label22
	iconst_0
	goto Label23
Label22:
	iconst_1
Label23:
	ifne Label20
	iconst_0
	goto Label21
Label20:
	iconst_1
Label21:
	invokestatic io/putBoolLn(Z)V
	iconst_1
	ifne Label24
	iconst_0
	ifne Label26
	iconst_1
	ifne Label26
	iconst_0
	goto Label27
Label26:
	iconst_1
Label27:
	ifne Label24
	iconst_0
	goto Label25
Label24:
	iconst_1
Label25:
	ifne Label28
	iconst_0
	ifne Label28
	iconst_0
	goto Label29
Label28:
	iconst_1
Label29:
	invokestatic io/putBoolLn(Z)V
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
