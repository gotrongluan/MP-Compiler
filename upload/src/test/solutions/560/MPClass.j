.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static arr [I

.method public static doubleAndSum([I)I
.var 0 is arr [I from Label0 to Label1
Label0:
	iconst_0
	istore_2
	iconst_0
	istore_1
Label4:
	iload_1
	bipush 10
	if_icmpgt Label3
	aload_0
	iload_1
	iconst_0
	isub
	aload_0
	iload_1
	iconst_0
	isub
	iaload
	iconst_2
	imul
	iastore
	iload_2
	aload_0
	iload_1
	iconst_0
	isub
	iaload
	iadd
	istore_2
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
.limit stack 5
.limit locals 3
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_0
	istore_1
Label4:
	iload_1
	bipush 10
	if_icmpgt Label3
	getstatic MPClass.arr [I
	iload_1
	iconst_0
	isub
	iload_1
	iastore
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
Label3:
	getstatic MPClass.arr [I
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	invokestatic MPClass/doubleAndSum([I)I
	invokestatic io/putInt(I)V
	invokestatic io/putLn()V
	iconst_0
	istore_1
Label7:
	iload_1
	bipush 10
	if_icmpgt Label6
	getstatic MPClass.arr [I
	iload_1
	iconst_0
	isub
	iaload
	invokestatic io/putInt(I)V
Label5:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label7
Label6:
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
	bipush 11
	newarray int
	putstatic MPClass.arr [I
	return
.limit stack 1
.limit locals 0
.end method
