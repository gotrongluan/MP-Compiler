.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a [I

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_0
	istore_2
	bipush 8
	istore_3
	iload_2
	istore_1
Label4:
	iload_1
	iload_3
	if_icmpgt Label3
	getstatic MPClass.a [I
	iload_1
	iconst_0
	isub
	iload_1
	iconst_1
	iadd
	iastore
	getstatic MPClass.a [I
	iload_1
	iconst_0
	isub
	iaload
	invokestatic io/putInt(I)V
	ldc " "
	invokestatic io/putString(Ljava/lang/String;)V
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
Label3:
	invokestatic io/putLn()V
	iload_2
	istore_1
Label7:
	iload_1
	iload_3
	if_icmpgt Label6
	iload_1
	invokestatic io/putInt(I)V
	ldc ": "
	invokestatic io/putString(Ljava/lang/String;)V
	getstatic MPClass.a [I
	iload_1
	iconst_0
	isub
	iaload
	invokestatic io/putIntLn(I)V
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
.limit locals 4
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
	bipush 9
	newarray int
	putstatic MPClass.a [I
	return
.limit stack 1
.limit locals 0
.end method