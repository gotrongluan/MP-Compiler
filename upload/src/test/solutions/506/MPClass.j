.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static i I

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 6
	newarray int
	astore_1
	aload_1
	iconst_2
	iconst_0
	isub
	iaload
	invokestatic io/putIntLn(I)V
	aload_1
	iconst_2
	iconst_0
	isub
	aload_1
	iconst_5
	iconst_0
	isub
	iaload
	iconst_2
	imul
	aload_1
	iconst_4
	iconst_0
	isub
	iaload
	isub
	iconst_4
	iadd
	iastore
	aload_1
	iconst_1
	iconst_0
	isub
	aload_1
	iconst_2
	iconst_0
	isub
	iaload
	iastore
	aload_1
	iconst_0
	iconst_0
	isub
	aload_1
	iconst_1
	iconst_0
	isub
	iaload
	iastore
	iconst_0
	putstatic MPClass.i I
Label4:
	getstatic MPClass.i I
	iconst_5
	if_icmpgt Label3
	aload_1
	getstatic MPClass.i I
	iconst_0
	isub
	iaload
	invokestatic io/putIntLn(I)V
Label2:
	getstatic MPClass.i I
	iconst_1
	iadd
	putstatic MPClass.i I
	goto Label4
Label3:
Label1:
	return
.limit stack 7
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
