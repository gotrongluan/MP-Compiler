.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a I
.field static b F
.field static c Z

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_0
	putstatic MPClass.a I
	ldc 1.5
	putstatic MPClass.b F
	iconst_1
	putstatic MPClass.c Z
	getstatic MPClass.a I
	invokestatic io/putInt(I)V
	getstatic MPClass.b F
	invokestatic io/putFloat(F)V
	getstatic MPClass.c Z
	invokestatic io/putBool(Z)V
	ldc "abc"
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
