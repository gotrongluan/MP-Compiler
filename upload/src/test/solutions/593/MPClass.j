.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_0
	istore_1
Label4:
	iload_1
	bipush 10
	if_icmpgt Label3
.var 2 is i F from Label5 to Label6
Label5:
.var 3 is t Z from Label7 to Label8
Label7:
.var 4 is l Ljava/lang/String; from Label9 to Label10
Label9:
.var 5 is u [Ljava/lang/String; from Label11 to Label12
Label11:
	bipush 11
	anewarray java/lang/String
	astore 5
	goto Label3
Label12:
Label10:
Label8:
Label6:
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
Label3:
	ldc "EXO"
	invokestatic io/putString(Ljava/lang/String;)V
Label1:
	return
.limit stack 2
.limit locals 6
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
