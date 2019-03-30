.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	sipush 20001
	newarray int
	astore_1
	bipush 20
	ineg
	istore_3
	bipush 20
	istore 4
	aload_1
	iload_3
	sipush -10000
	isub
	iconst_1
	iastore
	aload_1
	iload_3
	iconst_1
	iadd
	sipush -10000
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
	sipush -10000
	isub
	aload_1
	iload_2
	iconst_1
	isub
	sipush -10000
	isub
	iaload
	aload_1
	iload_2
	iconst_2
	isub
	sipush -10000
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
	sipush -10000
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
