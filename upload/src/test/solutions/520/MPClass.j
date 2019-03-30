.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_5
	newarray float
	astore_1
	iconst_2
	ineg
	istore_2
Label2:
	iload_2
	iconst_2
	if_icmpgt Label4
	iconst_1
	goto Label5
Label4:
	iconst_0
Label5:
	ifeq Label3
	aload_1
	iload_2
	bipush -2
	isub
	iload_2
	i2f
	invokestatic MPClass/foo(F)F
	fastore
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label2
Label3:
	iconst_2
	ineg
	istore_2
Label6:
	iload_2
	iconst_2
	if_icmpgt Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	ifeq Label7
	aload_1
	iload_2
	bipush -2
	isub
	faload
	aload_1
	iload_2
	bipush -2
	isub
	faload
	invokestatic MPClass/foo(F)F
	fcmpl
	ifge Label10
	iconst_1
	goto Label11
Label10:
	iconst_0
Label11:
	ifeq Label12
	ldc "PHP"
	invokestatic io/putString(Ljava/lang/String;)V
	goto Label13
Label12:
	ldc "Ruby"
	invokestatic io/putString(Ljava/lang/String;)V
Label13:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label6
Label7:
Label1:
	return
.limit stack 5
.limit locals 3
.end method

.method public static foo(F)F
.var 0 is n F from Label0 to Label1
Label0:
	fload_0
	ldc 0.5
	fmul
	freturn
Label1:
.limit stack 2
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
