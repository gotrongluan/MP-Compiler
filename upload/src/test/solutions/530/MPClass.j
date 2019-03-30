.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static t [I

.method public static foo()F
Label0:
	ldc 0.0
	freturn
Label1:
.limit stack 1
.limit locals 0
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_0
	istore_1
.var 2 is x I from Label2 to Label3
.var 3 is t I from Label2 to Label3
.var 4 is foo I from Label2 to Label3
Label2:
	ldc 2122000
	istore 4
	iload 4
	istore_3
	iload_3
	istore_2
	iload_2
	invokestatic io/putInt(I)V
	iload_3
	invokestatic io/putInt(I)V
	iload 4
	invokestatic io/putInt(I)V
Label3:
Label1:
	return
.limit stack 1
.limit locals 5
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
	bipush 11
	newarray int
	putstatic MPClass.t [I
	return
.limit stack 1
.limit locals 0
.end method
