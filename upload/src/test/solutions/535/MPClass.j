.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static y [Ljava/lang/String;

.method public static foo([Ljava/lang/String;)V
.var 0 is x [Ljava/lang/String; from Label0 to Label1
Label0:
.var 1 is i I from Label2 to Label3
Label2:
	iconst_0
	istore_1
Label6:
	iload_1
	iconst_5
	if_icmpgt Label5
	aload_0
	iload_1
	iconst_0
	isub
	aaload
	invokestatic io/putString(Ljava/lang/String;)V
Label4:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label6
Label5:
Label3:
Label1:
	return
.limit stack 3
.limit locals 2
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	getstatic MPClass.y [Ljava/lang/String;
	invokestatic MPClass/foo([Ljava/lang/String;)V
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

.method public static <clinit>()V
	bipush 6
	anewarray java/lang/String
	putstatic MPClass.y [Ljava/lang/String;
	return
.limit stack 1
.limit locals 0
.end method
