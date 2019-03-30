.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static myPutString(Ljava/lang/String;)V
.var 0 is s Ljava/lang/String; from Label0 to Label1
Label0:
	aload_0
	invokestatic io/putString(Ljava/lang/String;)V
Label1:
	return
.limit stack 1
.limit locals 1
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_2
	istore 5
	iload 5
	istore 4
	iconst_3
	istore 6
	iload 6
	iload 5
	isub
	istore 4
	iconst_1
	istore_1
Label2:
	iload_1
	iload 4
	if_icmpgt Label4
	iconst_1
	goto Label5
Label4:
	iconst_0
Label5:
	ifeq Label3
	iconst_1
	istore_2
Label8:
	iload_2
	iload 5
	if_icmpgt Label7
	iconst_1
	istore_3
Label11:
	iload_3
	iload 6
	if_icmpgt Label10
	ldc "KMS"
	invokestatic MPClass/myPutString(Ljava/lang/String;)V
Label9:
	iload_3
	iconst_1
	iadd
	istore_3
	goto Label11
Label10:
Label6:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label8
Label7:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label2
Label3:
Label1:
	return
.limit stack 2
.limit locals 7
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
