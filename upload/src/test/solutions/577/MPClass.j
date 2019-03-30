.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static countOdd([I)I
.var 0 is x [I from Label0 to Label1
Label0:
	iconst_0
	istore_2
	iconst_0
	istore_1
Label4:
	iload_1
	iconst_4
	if_icmpgt Label3
	aload_0
	iload_1
	iconst_0
	isub
	iaload
	iconst_2
	irem
	iconst_0
	if_icmpeq Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	ifeq Label7
	iload_2
	iconst_1
	iadd
	istore_2
Label7:
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
Label3:
	iload_2
	ireturn
Label1:
.limit stack 3
.limit locals 3
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
	bipush 20
	iastore
	aload_1
	iconst_1
	iconst_0
	isub
	iconst_5
	iastore
	aload_1
	iconst_2
	iconst_0
	isub
	bipush 6
	ineg
	iastore
	aload_1
	iconst_4
	iconst_0
	isub
	bipush 11
	iastore
	aload_1
	iconst_3
	iconst_0
	isub
	iconst_0
	iastore
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	invokestatic MPClass/countOdd([I)I
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
