.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_1
	istore_3
	iconst_0
	istore_1
Label4:
	iload_1
	iconst_4
	if_icmpgt Label3
	iconst_1
	istore_2
Label5:
	iload_2
	iconst_3
	if_icmpgt Label7
	iconst_1
	goto Label8
Label7:
	iconst_0
Label8:
	ifeq Label6
	iload_2
	invokestatic io/putInt(I)V
	iload_2
	iconst_3
	if_icmpne Label9
	iconst_1
	goto Label10
Label9:
	iconst_0
Label10:
	ifeq Label11
	iconst_0
	istore_3
	goto Label6
Label11:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label5
Label6:
	iload_3
	ifne Label12
	iconst_1
	goto Label13
Label12:
	iconst_0
Label13:
	ifeq Label14
	goto Label3
Label14:
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
Label3:
Label1:
	return
.limit stack 2
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
