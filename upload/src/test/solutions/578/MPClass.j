.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a I

.method public static foo1()V
Label0:
	getstatic MPClass.a I
	iconst_1
	iadd
	putstatic MPClass.a I
	invokestatic MPClass/foo2()V
Label1:
	return
.limit stack 2
.limit locals 0
.end method

.method public static foo2()V
Label0:
	getstatic MPClass.a I
	iconst_1
	iadd
	putstatic MPClass.a I
	invokestatic MPClass/foo3()V
Label1:
	return
.limit stack 2
.limit locals 0
.end method

.method public static foo3()V
Label0:
	getstatic MPClass.a I
	iconst_1
	iadd
	putstatic MPClass.a I
	invokestatic MPClass/foo4()V
Label1:
	return
.limit stack 2
.limit locals 0
.end method

.method public static foo4()V
Label0:
	getstatic MPClass.a I
	iconst_1
	iadd
	putstatic MPClass.a I
Label1:
	return
.limit stack 2
.limit locals 0
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	invokestatic MPClass/foo1()V
	getstatic MPClass.a I
	invokestatic io/putInt(I)V
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
