.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 11
	newarray int
	astore_1
	iconst_0
	istore_3
	bipush 10
	istore 4
	aload_1
	iload_3
	iconst_0
	isub
	iconst_1
	iastore
	aload_1
	iload_3
	iconst_1
	iadd
	iconst_0
	isub
	iconst_1
	iastore
	iload_3
	iconst_2
	iadd
	istore_2
Label4:
	iload_2
	iload 4
	if_icmpgt Label3
	aload_1
	iload_2
	iconst_0
	isub
	aload_1
	iload_2
	iconst_1
	isub
	iconst_0
	isub
	iaload
	aload_1
	iload_2
	iconst_2
	isub
	iconst_0
	isub
	iaload
	iadd
	iastore
Label2:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label4
Label3:
	aload_1
	iload 4
	iconst_0
	isub
	iaload
	invokestatic io/putInt(I)V
Label1:
	return
.limit stack 8
.limit locals 5
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
