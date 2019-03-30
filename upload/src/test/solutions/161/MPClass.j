.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_0
	ifne Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	invokestatic io/putBoolLn(Z)V
	iconst_1
	ifne Label4
	iconst_1
	goto Label5
Label4:
	iconst_0
Label5:
	invokestatic io/putBoolLn(Z)V
	iconst_0
	ifne Label6
	iconst_1
	goto Label7
Label6:
	iconst_0
Label7:
	ifne Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	invokestatic io/putBoolLn(Z)V
	iconst_1
	ifne Label10
	iconst_1
	goto Label11
Label10:
	iconst_0
Label11:
	ifne Label12
	iconst_1
	goto Label13
Label12:
	iconst_0
Label13:
	invokestatic io/putBoolLn(Z)V
	iconst_0
	ifne Label14
	iconst_1
	goto Label15
Label14:
	iconst_0
Label15:
	ifne Label16
	iconst_1
	goto Label17
Label16:
	iconst_0
Label17:
	ifne Label18
	iconst_1
	goto Label19
Label18:
	iconst_0
Label19:
	invokestatic io/putBoolLn(Z)V
	iconst_1
	ifne Label20
	iconst_1
	goto Label21
Label20:
	iconst_0
Label21:
	ifne Label22
	iconst_1
	goto Label23
Label22:
	iconst_0
Label23:
	ifne Label24
	iconst_1
	goto Label25
Label24:
	iconst_0
Label25:
	invokestatic io/putBoolLn(Z)V
	iconst_0
	ifne Label26
	iconst_1
	goto Label27
Label26:
	iconst_0
Label27:
	iconst_1
	imul
	ifeq Label28
	iconst_1
	goto Label29
Label28:
	iconst_0
Label29:
	invokestatic io/putBoolLn(Z)V
	iconst_1
	ifne Label30
	iconst_1
	goto Label31
Label30:
	iconst_0
Label31:
	iconst_0
	imul
	ifeq Label32
	iconst_1
	goto Label33
Label32:
	iconst_0
Label33:
	invokestatic io/putBoolLn(Z)V
	iconst_0
	ifne Label34
	iconst_1
	goto Label35
Label34:
	iconst_0
Label35:
	ifne Label36
	iconst_1
	goto Label37
Label36:
	iconst_0
Label37:
	iconst_1
	ifne Label38
	iconst_1
	goto Label39
Label38:
	iconst_0
Label39:
	ifne Label40
	iconst_1
	goto Label41
Label40:
	iconst_0
Label41:
	ifne Label42
	iconst_1
	goto Label43
Label42:
	iconst_0
Label43:
	imul
	ifeq Label44
	iconst_1
	goto Label45
Label44:
	iconst_0
Label45:
	iconst_0
	iconst_1
	imul
	ifeq Label46
	iconst_1
	goto Label47
Label46:
	iconst_0
Label47:
	iadd
	ifne Label48
	iconst_0
	goto Label49
Label48:
	iconst_1
Label49:
	invokestatic io/putBoolLn(Z)V
	iconst_1
	ifne Label50
	iconst_1
	goto Label51
Label50:
	iconst_0
Label51:
	ifne Label52
	iconst_1
	goto Label53
Label52:
	iconst_0
Label53:
	iconst_0
	iadd
	ifne Label54
	iconst_0
	goto Label55
Label54:
	iconst_1
Label55:
	invokestatic io/putBoolLn(Z)V
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
