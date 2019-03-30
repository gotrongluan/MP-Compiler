.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static foo([F)V
.var 0 is x [F from Label0 to Label1
Label0:
.var 1 is i I from Label2 to Label3
Label2:
	iconst_0
	istore_1
Label6:
	iload_1
	iconst_5
	if_icmpgt Label5
	aload_0
	iload_1
	iconst_0
	isub
	faload
	invokestatic io/putFloat(F)V
Label4:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label6
Label5:
Label3:
Label1:
	return
.limit stack 3
.limit locals 2
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 6
	newarray float
	astore_1
	aload_1
	iconst_0
	iconst_0
	isub
	ldc 1.5
	fastore
	aload_1
	iconst_1
	iconst_0
	isub
	ldc 1.5
	fneg
	fastore
	aload_1
	iconst_2
	iconst_0
	isub
	aload_1
	iconst_1
	iconst_0
	isub
	faload
	aload_1
	iconst_0
	iconst_0
	isub
	faload
	fsub
	fastore
	aload_1
	iconst_3
	iconst_0
	isub
	iconst_2
	i2f
	fastore
	aload_1
	iconst_4
	iconst_0
	isub
	ldc 10.5
	fastore
	aload_1
	iconst_5
	iconst_0
	isub
	ldc 2.25
	fastore
	aload_1
	invokevirtual [F/clone()Ljava/lang/Object;
	checkcast [F
	invokestatic MPClass/foo([F)V
Label1:
	return
.limit stack 9
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
