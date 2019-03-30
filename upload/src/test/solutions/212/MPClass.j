.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 11
	newarray int
	astore_1
	ldc 1000000000
	istore_3
	ldc 1000000010
	istore 4
	iload_3
	istore_2
Label4:
	iload_2
	iload 4
	if_icmpgt Label3
	aload_1
	iload_2
	ldc 1000000000
	isub
	iload_2
	iconst_1
	iadd
	iastore
	aload_1
	iload_2
	ldc 1000000000
	isub
	iaload
	invokestatic io/putInt(I)V
	ldc " "
	invokestatic io/putString(Ljava/lang/String;)V
Label2:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label4
Label3:
	invokestatic io/putLn()V
	iload_3
	istore_2
Label7:
	iload_2
	iload 4
	if_icmpgt Label6
	iload_2
	invokestatic io/putInt(I)V
	ldc ": "
	invokestatic io/putString(Ljava/lang/String;)V
	aload_1
	iload_2
	ldc 1000000000
	isub
	iaload
	invokestatic io/putIntLn(I)V
Label5:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label7
Label6:
Label1:
	return
.limit stack 4
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
