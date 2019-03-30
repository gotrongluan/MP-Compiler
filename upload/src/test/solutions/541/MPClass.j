.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static foo(II)V
.var 0 is a I from Label0 to Label1
.var 1 is b I from Label0 to Label1
Label0:
	iload_0
	invokestatic io/putIntLn(I)V
	iload_1
	invokestatic io/putInt(I)V
Label1:
	return
.limit stack 1
.limit locals 2
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 11
	newarray int
	astore_1
.var 2 is i I from Label2 to Label3
Label2:
	iconst_0
	istore_2
Label6:
	iload_2
	bipush 10
	if_icmpgt Label5
	aload_1
	iload_2
	iconst_0
	isub
	iload_2
	invokestatic MPClass/fast(I)I
	iastore
Label4:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label6
Label5:
Label3:
	bipush 9
	invokestatic MPClass/fast(I)I
	aload_1
	bipush 10
	iconst_0
	isub
	iaload
	invokestatic MPClass/foo(II)V
Label1:
	return
.limit stack 5
.limit locals 3
.end method

.method public static fast(I)I
.var 0 is n I from Label0 to Label1
Label0:
	iload_0
	iconst_0
	if_icmpne Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	iconst_0
	ireturn
Label4:
	iload_0
	bipush 7
	idiv
	iload_0
	bipush 7
	irem
	iadd
	iload_0
	iconst_1
	isub
	invokestatic MPClass/fast(I)I
	iadd
	ireturn
Label1:
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
