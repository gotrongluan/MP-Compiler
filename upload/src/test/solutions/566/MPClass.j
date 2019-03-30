.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static t [I

.method public static getArray()[I
Label0:
.var 0 is i I from Label2 to Label3
Label2:
	iconst_0
	istore_0
Label6:
	iload_0
	bipush 6
	if_icmpgt Label5
	getstatic MPClass.t [I
	iload_0
	iconst_0
	isub
	iload_0
	iconst_2
	irem
	iastore
Label4:
	iload_0
	iconst_1
	iadd
	istore_0
	goto Label6
Label5:
Label3:
	getstatic MPClass.t [I
	areturn
Label1:
.limit stack 4
.limit locals 1
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	invokestatic MPClass/getArray()[I
	iconst_2
	iconst_0
	isub
	ldc 1611931
	iastore
	getstatic MPClass.t [I
	iconst_2
	iconst_0
	isub
	iaload
	istore_1
	getstatic MPClass.t [I
	iconst_2
	iconst_0
	isub
	iaload
	invokestatic io/putInt(I)V
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
	return
.limit stack 1
.limit locals 0
.end method
