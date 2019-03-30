.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static t [I

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	sipush 2001
	newarray int
	astore_1
.var 2 is i I from Label2 to Label3
.var 3 is t [I from Label2 to Label3
Label2:
	bipush 6
	newarray int
	astore_3
	iconst_0
	istore_2
	iconst_0
	istore_2
Label6:
	iload_2
	iconst_5
	if_icmpgt Label5
	aload_3
	iload_2
	iconst_0
	isub
	iaload
	invokestatic io/putInt(I)V
Label4:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label6
Label5:
Label3:
Label1:
	return
.limit stack 3
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

.method public static <clinit>()V
	sipush 1001
	newarray int
	putstatic MPClass.t [I
	return
.limit stack 1
.limit locals 0
.end method
