.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a I

.method public static mysum(IIII)I
.var 0 is a I from Label0 to Label1
.var 1 is b I from Label0 to Label1
.var 2 is c I from Label0 to Label1
.var 3 is d I from Label0 to Label1
Label0:
	iload_0
	iload_1
	iadd
	iload_2
	iadd
	iload_3
	iadd
	ireturn
Label1:
.limit stack 2
.limit locals 4
.end method

.method public static x()I
Label0:
	getstatic MPClass.a I
	iconst_1
	iadd
	putstatic MPClass.a I
	getstatic MPClass.a I
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static y()I
Label0:
	getstatic MPClass.a I
	iconst_2
	iadd
	putstatic MPClass.a I
	getstatic MPClass.a I
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static z()I
Label0:
	getstatic MPClass.a I
	iconst_3
	iadd
	putstatic MPClass.a I
	getstatic MPClass.a I
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_1
	putstatic MPClass.a I
	invokestatic MPClass/x()I
	invokestatic MPClass/y()I
	invokestatic MPClass/z()I
	getstatic MPClass.a I
	invokestatic MPClass/mysum(IIII)I
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
