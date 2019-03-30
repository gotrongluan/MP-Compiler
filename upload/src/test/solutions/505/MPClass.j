.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static my_var [F

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	getstatic MPClass.my_var [F
	iconst_0
	bipush -2
	isub
	ldc 0.5
	fastore
	getstatic MPClass.my_var [F
	iconst_1
	bipush -2
	isub
	getstatic MPClass.my_var [F
	iconst_0
	bipush -2
	isub
	faload
	fastore
	getstatic MPClass.my_var [F
	iconst_1
	bipush -2
	isub
	faload
	invokestatic io/putFloat(F)V
Label1:
	return
.limit stack 6
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
	bipush 8
	newarray float
	putstatic MPClass.my_var [F
	return
.limit stack 1
.limit locals 0
.end method
