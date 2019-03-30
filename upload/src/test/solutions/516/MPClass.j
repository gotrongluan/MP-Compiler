.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static foo(I)Ljava/lang/String;
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
	if_icmple Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	ifeq Label7
	ldc "Javascript"
	areturn
Label7:
	iload_0
	iconst_5
	if_icmple Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	ifeq Label10
	ldc "C"
	areturn
Label10:
	ldc "C#"
	areturn
Label4:
	iload_0
	iconst_4
	ineg
	if_icmpge Label11
	iconst_1
	goto Label12
Label11:
	iconst_0
Label12:
	ifeq Label13
	ldc "CSS"
	areturn
Label13:
	ldc "HTML"
	areturn
Label1:
.limit stack 2
.limit locals 1
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 11
	invokestatic MPClass/foo(I)Ljava/lang/String;
	invokestatic io/putStringLn(Ljava/lang/String;)V
	iconst_5
	ineg
	invokestatic MPClass/foo(I)Ljava/lang/String;
	invokestatic io/putStringLn(Ljava/lang/String;)V
	iconst_4
	invokestatic MPClass/foo(I)Ljava/lang/String;
	invokestatic io/putStringLn(Ljava/lang/String;)V
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
