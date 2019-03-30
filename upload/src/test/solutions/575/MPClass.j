.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static sum([II)I
.var 0 is x [I from Label0 to Label1
.var 1 is i I from Label0 to Label1
Label0:
	iload_1
	iconst_0
	if_icmpne Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	aload_0
	iconst_0
	iconst_0
	isub
	iaload
	ireturn
Label4:
	aload_0
	iload_1
	iconst_0
	isub
	iaload
	aload_0
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	iload_1
	iconst_1
	isub
	invokestatic MPClass/sum([II)I
	iadd
	ireturn
Label1:
.limit stack 4
.limit locals 2
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_5
	newarray int
	astore_1
	aload_1
	iconst_0
	iconst_0
	isub
	iconst_3
	iastore
	aload_1
	iconst_2
	iconst_0
	isub
	bipush 10
	ineg
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
	iconst_3
	iconst_0
	isub
	iconst_4
	iastore
	aload_1
	iconst_4
	iconst_0
	isub
	bipush 22
	iastore
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	iconst_4
	invokestatic MPClass/sum([II)I
	invokestatic io/putInt(I)V
Label1:
	return
.limit stack 8
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
