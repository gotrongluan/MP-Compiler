.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 11
	newarray int
	astore_1
	aload_1
	iconst_0
	iconst_0
	isub
	iconst_1
	iastore
	aload_1
	iconst_1
	iconst_0
	isub
	aload_1
	iconst_0
	iconst_0
	isub
	iaload
	iastore
	aload_1
	iconst_1
	iconst_0
	isub
	iaload
	invokestatic io/putInt(I)V
Label1:
	return
.limit stack 6
.limit locals 3
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
