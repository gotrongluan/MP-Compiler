.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a Z

.method public static abc()Z
Label0:
	getstatic MPClass.a Z
	ifne Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	putstatic MPClass.a Z
	iconst_1
	ireturn
Label1:
.limit stack 2
.limit locals 0
.end method

.method public static xyz()Z
Label0:
	getstatic MPClass.a Z
	ireturn
Label1:
.limit stack 1
.limit locals 0
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_1
	putstatic MPClass.a Z
	invokestatic MPClass/abc()Z
	invokestatic MPClass/xyz()Z
	imul
	ifeq Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	invokestatic io/putBool(Z)V
	invokestatic MPClass/abc()Z
	ifne Label4
	iconst_1
	goto Label5
Label4:
	iconst_0
Label5:
	invokestatic MPClass/xyz()Z
	iadd
	ifne Label6
	iconst_0
	goto Label7
Label6:
	iconst_1
Label7:
	invokestatic io/putBool(Z)V
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
