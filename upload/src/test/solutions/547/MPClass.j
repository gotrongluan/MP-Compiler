.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a I

.method public static abc()I
Label0:
	getstatic MPClass.a I
	iconst_1
	iadd
	putstatic MPClass.a I
	iconst_2
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static xyz()I
Label0:
	getstatic MPClass.a I
	iconst_2
	isub
	putstatic MPClass.a I
	iconst_3
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static mnp()I
Label0:
	getstatic MPClass.a I
	iconst_2
	iadd
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_0
	putstatic MPClass.a I
	invokestatic MPClass/abc()I
	invokestatic MPClass/mnp()I
	if_icmpge Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	invokestatic io/putBool(Z)V
	invokestatic MPClass/xyz()I
	getstatic MPClass.a I
	if_icmple Label4
	iconst_1
	goto Label5
Label4:
	iconst_0
Label5:
	invokestatic io/putBool(Z)V
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
