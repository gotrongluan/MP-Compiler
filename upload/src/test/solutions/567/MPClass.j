.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static t [I
.field static l [I

.method public static foo(I)[I
.var 0 is n I from Label0 to Label1
Label0:
	iload_0
	iconst_0
	if_icmple Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	getstatic MPClass.t [I
	areturn
Label4:
	getstatic MPClass.l [I
	areturn
Label1:
.limit stack 2
.limit locals 1
.end method

.method public static initial()V
Label0:
	iconst_0
	istore_0
Label4:
	iload_0
	bipush 6
	if_icmpgt Label3
	getstatic MPClass.t [I
	iload_0
	iconst_0
	isub
	iload_0
	iastore
	getstatic MPClass.l [I
	iload_0
	iconst_0
	isub
	getstatic MPClass.t [I
	iload_0
	iconst_0
	isub
	iaload
	iconst_2
	imul
	iastore
Label2:
	iload_0
	iconst_1
	iadd
	istore_0
	goto Label4
Label3:
Label1:
	return
.limit stack 6
.limit locals 1
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	invokestatic MPClass/initial()V
	iconst_2
	invokestatic MPClass/foo(I)[I
	iconst_0
	iconst_0
	isub
	iaload
	istore_1
	iload_1
	invokestatic io/putInt(I)V
	getstatic MPClass.t [I
	iconst_0
	iconst_0
	isub
	bipush 100
	iastore
	iconst_2
	invokestatic MPClass/foo(I)[I
	iconst_0
	iconst_0
	isub
	iaload
	istore_1
	iload_1
	invokestatic io/putInt(I)V
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

.method public static <clinit>()V
	bipush 7
	newarray int
	putstatic MPClass.t [I
	bipush 7
	newarray int
	putstatic MPClass.l [I
	return
.limit stack 1
.limit locals 0
.end method
