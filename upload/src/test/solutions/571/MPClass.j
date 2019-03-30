.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static max(FFF)F
.var 0 is a F from Label0 to Label1
.var 1 is b F from Label0 to Label1
.var 2 is c F from Label0 to Label1
Label0:
	fload_0
	fload_1
	fcmpl
	ifle Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	fload_0
	fload_2
	fcmpl
	ifle Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	ifeq Label7
	fload_0
	freturn
Label7:
	fload_2
	freturn
Label4:
	fload_1
	fload_2
	fcmpl
	ifle Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	ifeq Label10
	fload_1
	freturn
Label10:
	fload_2
	freturn
Label1:
.limit stack 2
.limit locals 3
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	ldc 212.5
	sipush 1611
	i2f
	ldc 1000.5
	fneg
	invokestatic MPClass/max(FFF)F
	invokestatic io/putFloat(F)V
	ldc 2.2
	ldc 2.2
	ldc 2.2
	invokestatic MPClass/max(FFF)F
	invokestatic io/putFloat(F)V
	bipush 10
	ineg
	i2f
	bipush 10
	ineg
	i2f
	bipush 10
	ineg
	i2f
	invokestatic MPClass/max(FFF)F
	invokestatic io/putFloat(F)V
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
