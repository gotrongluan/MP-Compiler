.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a I
.field static b I

.method public static x()I
Label0:
	getstatic MPClass.a I
	iconst_2
	isub
	putstatic MPClass.a I
	getstatic MPClass.b I
	iconst_1
	iadd
	putstatic MPClass.b I
	getstatic MPClass.b I
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static y()I
Label0:
	getstatic MPClass.a I
	iconst_1
	iadd
	putstatic MPClass.a I
	getstatic MPClass.b I
	iconst_1
	isub
	putstatic MPClass.b I
	getstatic MPClass.a I
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static z()Z
Label0:
	getstatic MPClass.a I
	getstatic MPClass.b I
	isub
	iconst_1
	iadd
	putstatic MPClass.a I
	getstatic MPClass.a I
	getstatic MPClass.b I
	if_icmpge Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static t()Z
Label0:
	getstatic MPClass.b I
	getstatic MPClass.a I
	if_icmpge Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 15
	putstatic MPClass.a I
	bipush 6
	putstatic MPClass.b I
	invokestatic MPClass/x()I
	invokestatic MPClass/y()I
	isub
	iconst_2
	if_icmple Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	invokestatic MPClass/x()I
	invokestatic MPClass/y()I
	idiv
	getstatic MPClass.b I
	getstatic MPClass.a I
	idiv
	if_icmpeq Label4
	iconst_1
	goto Label5
Label4:
	iconst_0
Label5:
	imul
	ifeq Label6
	iconst_1
	goto Label7
Label6:
	iconst_0
Label7:
	invokestatic MPClass/z()Z
	invokestatic MPClass/x()I
	getstatic MPClass.b I
	if_icmpge Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	imul
	ifeq Label10
	iconst_1
	goto Label11
Label10:
	iconst_0
Label11:
	iadd
	ifne Label12
	iconst_0
	goto Label13
Label12:
	iconst_1
Label13:
	invokestatic MPClass/t()Z
	invokestatic MPClass/x()I
	invokestatic MPClass/y()I
	irem
	iconst_3
	if_icmpne Label14
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
	iadd
	ifne Label18
	iconst_0
	goto Label19
Label18:
	iconst_1
Label19:
	invokestatic io/putBool(Z)V
	getstatic MPClass.a I
	invokestatic io/putInt(I)V
	getstatic MPClass.b I
	invokestatic io/putInt(I)V
Label1:
	return
.limit stack 4
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
