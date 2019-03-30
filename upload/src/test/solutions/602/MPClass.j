.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static foo(ILjava/lang/String;)V
.var 0 is n I from Label0 to Label1
.var 1 is s Ljava/lang/String; from Label0 to Label1
Label0:
	aload_1
	invokestatic io/putString(Ljava/lang/String;)V
	iload_0
	iconst_0
	if_icmpne Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	return
Label4:
	iload_0
	iconst_1
	isub
	aload_1
	invokestatic MPClass/foo(ILjava/lang/String;)V
Label1:
	return
.limit stack 2
.limit locals 2
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_4
	ldc "Clojure"
	invokestatic MPClass/foo(ILjava/lang/String;)V
Label1:
	return
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
