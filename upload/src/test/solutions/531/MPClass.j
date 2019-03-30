.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static foo()I
Label0:
.var 0 is t Z from Label2 to Label3
Label2:
.var 1 is h Z from Label4 to Label5
Label4:
.var 2 is u Z from Label6 to Label7
Label6:
	iconst_1
	istore_0
	iload_0
	ifne Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	istore_2
	iload_2
	istore_1
	iload_0
	iload_1
	iload_2
	imul
	ifeq Label10
	iconst_1
	goto Label11
Label10:
	iconst_0
Label11:
	iadd
	ifne Label12
	iconst_0
	goto Label13
Label12:
	iconst_1
Label13:
	ifeq Label14
	iconst_0
	ireturn
Label14:
	iconst_1
	ireturn
Label7:
Label5:
Label3:
Label1:
.limit stack 3
.limit locals 3
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	invokestatic MPClass/foo()I
	invokestatic io/putIntLn(I)V
Label1:
	return
.limit stack 1
.limit locals 1
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
