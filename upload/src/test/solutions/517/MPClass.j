.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static foo(F)Ljava/lang/String;
.var 0 is n F from Label0 to Label1
Label0:
.var 1 is m F from Label2 to Label3
Label2:
	fload_0
	ldc 1.5
	fmul
	fstore_1
	fload_1
	iconst_0
	i2f
	fcmpl
	ifle Label4
	iconst_1
	goto Label5
Label4:
	iconst_0
Label5:
	ifeq Label6
	fload_1
	bipush 10
	i2f
	fcmpl
	ifle Label7
	iconst_1
	goto Label8
Label7:
	iconst_0
Label8:
	ifeq Label9
	ldc "PHP"
	areturn
Label9:
	ldc "Python"
	areturn
Label6:
	fload_1
	bipush 10
	ineg
	i2f
	fcmpl
	ifge Label10
	iconst_1
	goto Label11
Label10:
	iconst_0
Label11:
	ifeq Label12
	fload_1
	bipush 20
	ineg
	i2f
	fcmpl
	ifge Label13
	iconst_1
	goto Label14
Label13:
	iconst_0
Label14:
	ifeq Label15
	ldc "Ruby"
	areturn
Label15:
	ldc "R"
	areturn
Label12:
	ldc "C++"
	areturn
Label3:
Label1:
.limit stack 2
.limit locals 2
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	ldc 2.5
	invokestatic MPClass/foo(F)Ljava/lang/String;
	invokestatic io/putStringLn(Ljava/lang/String;)V
	iconst_1
	ineg
	i2f
	invokestatic MPClass/foo(F)Ljava/lang/String;
	invokestatic io/putStringLn(Ljava/lang/String;)V
	ldc 0.5
	fneg
	invokestatic MPClass/foo(F)Ljava/lang/String;
	invokestatic io/putStringLn(Ljava/lang/String;)V
	sipush 200
	i2f
	invokestatic MPClass/foo(F)Ljava/lang/String;
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
