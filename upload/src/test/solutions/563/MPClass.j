.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static getString(I)Ljava/lang/String;
.var 0 is n I from Label0 to Label1
Label0:
	iload_0
	iconst_0
	if_icmple Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	iload_0
	bipush 10
	if_icmpge Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	ifeq Label7
	ldc "PHP"
	areturn
Label7:
	ldc "Python"
	areturn
Label4:
	iload_0
	bipush 10
	ineg
	if_icmple Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	ifeq Label10
	ldc "C++"
	areturn
Label10:
	ldc "Java"
	areturn
Label1:
.limit stack 2
.limit locals 1
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 100
	invokestatic MPClass/getString(I)Ljava/lang/String;
	invokestatic io/putString(Ljava/lang/String;)V
	iconst_5
	invokestatic MPClass/getString(I)Ljava/lang/String;
	invokestatic io/putString(Ljava/lang/String;)V
	iconst_2
	ineg
	invokestatic MPClass/getString(I)Ljava/lang/String;
	invokestatic io/putString(Ljava/lang/String;)V
	bipush 20
	ineg
	invokestatic MPClass/getString(I)Ljava/lang/String;
	invokestatic io/putString(Ljava/lang/String;)V
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
