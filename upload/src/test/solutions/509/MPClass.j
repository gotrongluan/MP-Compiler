.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static l Z
.field static u Z
.field static a Z
.field static n Z
.field static t [I

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	getstatic MPClass.t [I
	iconst_1
	iconst_0
	isub
	getstatic MPClass.t [I
	getstatic MPClass.t [I
	getstatic MPClass.t [I
	iconst_2
	iconst_0
	isub
	iaload
	iconst_0
	isub
	iaload
	iconst_0
	isub
	iaload
	iconst_2
	isub
	iastore
	getstatic MPClass.t [I
	iconst_0
	iconst_0
	isub
	getstatic MPClass.t [I
	iconst_1
	iconst_0
	isub
	iaload
	iastore
	getstatic MPClass.t [I
	iconst_1
	iconst_0
	isub
	iaload
	invokestatic io/putIntLn(I)V
	getstatic MPClass.t [I
	iconst_0
	iconst_0
	isub
	iaload
	bipush 7
	irem
	istore_1
	iload_1
	iconst_2
	idiv
	getstatic MPClass.t [I
	iconst_2
	iconst_0
	isub
	iaload
	iconst_3
	irem
	iadd
	i2f
	fstore_2
	fload_2
	invokestatic io/putFloat(F)V
	iconst_0
	fload_2
	iconst_0
	i2f
	fcmpl
	ifge Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	imul
	ifeq Label4
	iconst_1
	goto Label5
Label4:
	iconst_0
Label5:
	putstatic MPClass.l Z
	getstatic MPClass.l Z
	getstatic MPClass.l Z
	iadd
	ifne Label6
	iconst_0
	goto Label7
Label6:
	iconst_1
Label7:
	putstatic MPClass.u Z
	iconst_1
	getstatic MPClass.u Z
	imul
	ifeq Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	putstatic MPClass.a Z
	iload_1
	i2f
	fload_2
	fcmpl
	ifgt Label10
	iconst_1
	goto Label11
Label10:
	iconst_0
Label11:
	getstatic MPClass.t [I
	iconst_0
	iconst_0
	isub
	iaload
	getstatic MPClass.t [I
	iconst_1
	iconst_0
	isub
	iaload
	if_icmpeq Label12
	iconst_1
	goto Label13
Label12:
	iconst_0
Label13:
	ifne Label14
	iconst_1
	goto Label15
Label14:
	iconst_0
Label15:
	imul
	ifeq Label16
	iconst_1
	goto Label17
Label16:
	iconst_0
Label17:
	putstatic MPClass.n Z
	getstatic MPClass.l Z
	invokestatic io/putBool(Z)V
	getstatic MPClass.u Z
	invokestatic io/putBool(Z)V
	getstatic MPClass.a Z
	invokestatic io/putBool(Z)V
	getstatic MPClass.n Z
	invokestatic io/putBool(Z)V
Label1:
	return
.limit stack 7
.limit locals 3
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

.method public static <clinit>()V
	iconst_3
	newarray int
	putstatic MPClass.t [I
	return
.limit stack 1
.limit locals 0
.end method
