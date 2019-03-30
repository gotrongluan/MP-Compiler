.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static foo([I)V
.var 0 is x [I from Label0 to Label1
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
	aload_0
	iload_1
	iconst_0
	isub
	iaload
	iconst_1
	iadd
	iastore
	aload_0
	iload_1
	iconst_0
	isub
	iaload
	invokestatic io/putInt(I)V
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
.limit stack 5
.limit locals 2
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 6
	newarray int
	astore_1
	aload_1
	iconst_0
	iconst_0
	isub
	iconst_2
	iastore
	aload_1
	iconst_1
	iconst_0
	isub
	bipush 12
	iastore
	aload_1
	iconst_2
	iconst_0
	isub
	sipush 1998
	iastore
	aload_1
	iconst_3
	iconst_0
	isub
	bipush 16
	iastore
	aload_1
	iconst_4
	iconst_0
	isub
	sipush 2000
	iastore
	aload_1
	iconst_5
	iconst_0
	isub
	bipush 11
	iastore
.var 2 is i I from Label2 to Label3
Label2:
	iconst_0
	istore_2
Label6:
	iload_2
	iconst_5
	if_icmpgt Label5
	aload_1
	iload_2
	iconst_0
	isub
	iaload
	invokestatic io/putInt(I)V
Label4:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label6
Label5:
Label3:
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	invokestatic MPClass/foo([I)V
.var 2 is i I from Label7 to Label8
Label7:
	iconst_0
	istore_2
Label11:
	iload_2
	iconst_5
	if_icmpgt Label10
	aload_1
	iload_2
	iconst_0
	isub
	iaload
	invokestatic io/putInt(I)V
Label9:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label11
Label10:
Label8:
Label1:
	return
.limit stack 9
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
