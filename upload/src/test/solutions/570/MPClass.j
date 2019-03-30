.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static min([I)I
.var 0 is x [I from Label0 to Label1
Label0:
	aload_0
	bipush 10
	ineg
	bipush -10
	isub
	iaload
	istore_1
	bipush 9
	ineg
	istore_2
Label4:
	iload_2
	iconst_1
	ineg
	if_icmpgt Label3
	aload_0
	iload_2
	bipush -10
	isub
	iaload
	iload_1
	if_icmpge Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	ifeq Label7
	aload_0
	iload_2
	bipush -10
	isub
	iaload
	istore_1
Label7:
Label2:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label4
Label3:
	iload_1
	ireturn
Label1:
.limit stack 3
.limit locals 3
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 10
	newarray int
	astore_1
	aload_1
	iconst_1
	ineg
	bipush -10
	isub
	bipush 25
	iastore
	aload_1
	bipush 6
	ineg
	bipush -10
	isub
	aload_1
	iconst_1
	ineg
	bipush -10
	isub
	iaload
	iastore
	aload_1
	bipush 10
	ineg
	bipush -10
	isub
	aload_1
	bipush 6
	ineg
	bipush -10
	isub
	iaload
	iastore
	aload_1
	bipush 9
	ineg
	bipush -10
	isub
	bipush 6
	iastore
	aload_1
	bipush 7
	ineg
	bipush -10
	isub
	bipush 77
	iastore
	aload_1
	bipush 8
	ineg
	bipush -10
	isub
	sipush 222
	ineg
	iastore
	aload_1
	iconst_2
	ineg
	bipush -10
	isub
	bipush 100
	iastore
	aload_1
	iconst_4
	ineg
	bipush -10
	isub
	aload_1
	iconst_2
	ineg
	bipush -10
	isub
	iaload
	iastore
	aload_1
	iconst_5
	ineg
	bipush -10
	isub
	aload_1
	iconst_4
	ineg
	bipush -10
	isub
	iaload
	iastore
	aload_1
	iconst_3
	ineg
	bipush -10
	isub
	bipush 25
	iastore
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	invokestatic MPClass/min([I)I
	invokestatic io/putInt(I)V
Label1:
	return
.limit stack 13
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
