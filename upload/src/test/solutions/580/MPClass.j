.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static toString(I)Ljava/lang/String;
.var 0 is n I from Label0 to Label1
Label0:
	iload_0
	iconst_1
	if_icmpne Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	ldc "1"
	areturn
Label4:
	ldc "0"
	areturn
Label1:
.limit stack 2
.limit locals 1
.end method

.method public static toBits(I)V
.var 0 is n I from Label0 to Label1
Label0:
	iload_0
	iconst_1
	if_icmpne Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	ldc "1"
	invokestatic io/putString(Ljava/lang/String;)V
	goto Label5
Label4:
	iload_0
	iconst_2
	idiv
	invokestatic MPClass/toBits(I)V
	iload_0
	iconst_2
	irem
	invokestatic MPClass/toString(I)Ljava/lang/String;
	invokestatic io/putString(Ljava/lang/String;)V
Label5:
Label1:
	return
.limit stack 2
.limit locals 1
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 12
	invokestatic MPClass/toBits(I)V
	invokestatic io/putLn()V
	bipush 7
	invokestatic MPClass/toBits(I)V
	invokestatic io/putLn()V
	bipush 33
	invokestatic MPClass/toBits(I)V
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
