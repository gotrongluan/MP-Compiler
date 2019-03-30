.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static t Z
.field static c [I

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	getstatic MPClass.c [I
	iconst_0
	iconst_0
	isub
	iconst_2
	iastore
	getstatic MPClass.c [I
	iconst_0
	iconst_0
	isub
	iaload
	iconst_0
	if_icmple Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	iconst_1
	iadd
	ifne Label4
	iconst_0
	goto Label5
Label4:
	iconst_1
Label5:
	iconst_0
	iadd
	ifne Label6
	iconst_0
	goto Label7
Label6:
	iconst_1
Label7:
	putstatic MPClass.t Z
	getstatic MPClass.c [I
	iconst_0
	iconst_0
	isub
	iaload
	getstatic MPClass.c [I
	iconst_1
	iconst_0
	isub
	iaload
	if_icmple Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	ifeq Label10
	getstatic MPClass.t Z
	ifeq Label11
	ldc "PHP"
	invokestatic io/putStringLn(Ljava/lang/String;)V
	goto Label12
Label11:
	ldc "Python"
	invokestatic io/putStringLn(Ljava/lang/String;)V
Label12:
	goto Label13
Label10:
	ldc "Java"
	invokestatic io/putStringLn(Ljava/lang/String;)V
	getstatic MPClass.t Z
	ifeq Label14
	ldc "C++"
	invokestatic io/putStringLn(Ljava/lang/String;)V
	goto Label15
Label14:
	ldc "C"
	invokestatic io/putStringLn(Ljava/lang/String;)V
Label15:
Label13:
Label1:
	return
.limit stack 5
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
	iconst_3
	newarray int
	putstatic MPClass.c [I
	return
.limit stack 1
.limit locals 0
.end method
