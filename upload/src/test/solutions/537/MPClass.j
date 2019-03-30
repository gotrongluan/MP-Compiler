.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a I

.method public static swap(II)V
.var 0 is a I from Label0 to Label1
.var 1 is b I from Label0 to Label1
Label0:
	iload_0
	istore_2
	iload_1
	istore_0
	iload_2
	istore_1
Label1:
	return
.limit stack 1
.limit locals 3
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_0
	iconst_2
	invokestatic MPClass/swap(II)V
	bipush 100
	putstatic MPClass.a I
	sipush 200
	istore_1
	getstatic MPClass.a I
	invokestatic io/putInt(I)V
	iload_1
	invokestatic io/putInt(I)V
	getstatic MPClass.a I
	iload_1
	invokestatic MPClass/swap(II)V
	getstatic MPClass.a I
	invokestatic io/putInt(I)V
	iload_1
	invokestatic io/putInt(I)V
Label1:
	return
.limit stack 2
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
