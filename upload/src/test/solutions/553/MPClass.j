.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a I

.method public static x()Z
Label0:
	getstatic MPClass.a I
	iconst_1
	iadd
	putstatic MPClass.a I
	iconst_1
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static nx()Z
Label0:
	getstatic MPClass.a I
	iconst_1
	iadd
	putstatic MPClass.a I
	iconst_0
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 20
	putstatic MPClass.a I
	getstatic MPClass.a I
	invokestatic io/putInt(I)V
	invokestatic MPClass/nx()Z
	invokestatic MPClass/x()Z
	imul
	ifeq Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifne Label4
	invokestatic MPClass/x()Z
	ifne Label4
	iconst_0
	goto Label5
Label4:
	iconst_1
Label5:
	ifeq Label6
	invokestatic MPClass/nx()Z
	ifeq Label6
	iconst_1
	goto Label7
Label6:
	iconst_0
Label7:
	invokestatic MPClass/x()Z
	ifne Label8
	invokestatic MPClass/nx()Z
	invokestatic MPClass/nx()Z
	imul
	ifeq Label10
	iconst_1
	goto Label11
Label10:
	iconst_0
Label11:
	ifne Label8
	iconst_0
	goto Label9
Label8:
	iconst_1
Label9:
	iadd
	ifne Label12
	iconst_0
	goto Label13
Label12:
	iconst_1
Label13:
	invokestatic io/putBool(Z)V
	getstatic MPClass.a I
	invokestatic io/putInt(I)V
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
