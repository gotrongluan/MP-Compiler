.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	sipush 20001
	newarray boolean
	astore_1
	bipush 40
	ineg
	istore_3
	bipush 40
	istore 4
	aload_1
	iload_3
	sipush -10000
	isub
	iconst_1
	bastore
	aload_1
	iload_3
	iconst_1
	iadd
	sipush -10000
	isub
	iconst_0
	bastore
	iload_3
	iconst_2
	iadd
	istore_2
Label4:
	iload_2
	iload 4
	if_icmpgt Label3
	aload_1
	iload_2
	sipush -10000
	isub
	aload_1
	iload_2
	iconst_1
	isub
	sipush -10000
	isub
	baload
	ifeq Label5
	aload_1
	iload_2
	iconst_2
	isub
	sipush -10000
	isub
	baload
	ifne Label7
	iconst_1
	goto Label8
Label7:
	iconst_0
Label8:
	ifeq Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	ifne Label9
	aload_1
	iload_2
	iconst_1
	isub
	sipush -10000
	isub
	baload
	ifne Label11
	iconst_1
	goto Label12
Label11:
	iconst_0
Label12:
	ifne Label9
	iconst_0
	goto Label10
Label9:
	iconst_1
Label10:
	bastore
Label2:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label4
Label3:
	aload_1
	iload 4
	sipush -10000
	isub
	baload
	invokestatic io/putBool(Z)V
Label1:
	return
.limit stack 7
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
