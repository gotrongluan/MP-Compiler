.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static XYZ F

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	ldc 1.5
	fstore_1
	fload_1
	ldc 0.5
	fmul
	iconst_2
	i2f
	fadd
	ldc 0.1
	fload_1
	iconst_1
	i2f
	fsub
	fmul
	fsub
	putstatic MPClass.XYZ F
	getstatic MPClass.XYZ F
	fload_1
	fcmpl
	ifle Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	ldc "LUAN NGUYEN TRONG"
	invokestatic io/putString(Ljava/lang/String;)V
Label4:
	ldc "Huynh Thi Oanh Trinh"
	invokestatic io/putString(Ljava/lang/String;)V
	getstatic MPClass.XYZ F
	ldc 0.2
	fmul
	putstatic MPClass.XYZ F
	getstatic MPClass.XYZ F
	fload_1
	fcmpl
	ifle Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	ifeq Label7
	ldc "VO NGOC QUYNH NHU"
	invokestatic io/putString(Ljava/lang/String;)V
Label7:
Label1:
	return
.limit stack 4
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
