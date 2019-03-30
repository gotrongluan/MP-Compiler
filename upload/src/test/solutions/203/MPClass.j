.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_1
	istore_3
	bipush 10
	istore 4
	iload_3
	istore_1
Label4:
	iload_1
	iload 4
	if_icmpgt Label3
	iload_1
	invokestatic io/putInt(I)V
	ldc ": "
	invokestatic io/putString(Ljava/lang/String;)V
	iload_1
	iconst_1
	iadd
	istore_2
Label7:
	iload_2
	iload 4
	if_icmpgt Label6
	iload_2
	iload_1
	iadd
	iconst_2
	imul
	iload 4
	if_icmple Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	ifeq Label10
	goto Label6
Label10:
	iload_2
	invokestatic io/putInt(I)V
	ldc " "
	invokestatic io/putString(Ljava/lang/String;)V
Label5:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label7
Label6:
	invokestatic io/putLn()V
	ldc "j = "
	invokestatic io/putString(Ljava/lang/String;)V
	iload_2
	invokestatic io/putIntLn(I)V
	ldc "i = "
	invokestatic io/putString(Ljava/lang/String;)V
	iload_1
	invokestatic io/putIntLn(I)V
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
Label3:
	iload_1
	invokestatic io/putInt(I)V
Label1:
	return
.limit stack 2
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
