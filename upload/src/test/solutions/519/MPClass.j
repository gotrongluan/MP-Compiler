.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static fibonancci(I)I
.var 0 is n I from Label0 to Label1
Label0:
	iload_0
	iconst_0
	if_icmpge Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	iconst_1
	ineg
	ireturn
Label4:
	iload_0
	iconst_0
	if_icmpne Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	iload_0
	iconst_1
	if_icmpne Label7
	iconst_1
	goto Label8
Label7:
	iconst_0
Label8:
	iadd
	ifne Label9
	iconst_0
	goto Label10
Label9:
	iconst_1
Label10:
	ifeq Label11
	iload_0
	ireturn
Label11:
	iload_0
	iconst_1
	isub
	invokestatic MPClass/fibonancci(I)I
	iload_0
	iconst_2
	isub
	invokestatic MPClass/fibonancci(I)I
	iadd
	ireturn
Label1:
.limit stack 3
.limit locals 1
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 6
	newarray int
	astore_1
.var 2 is i I from Label2 to Label3
Label2:
	iconst_0
	istore_2
Label6:
	iload_2
	iconst_5
	if_icmpgt Label5
	aload_1
	iload_2
	iconst_0
	isub
	iload_2
	invokestatic MPClass/fibonancci(I)I
	iastore
Label4:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label6
Label5:
.var 3 is r [I from Label7 to Label8
Label7:
	bipush 6
	newarray int
	astore_3
	iconst_5
	istore_2
Label11:
	iload_2
	iconst_0
	if_icmplt Label10
	aload_3
	iload_2
	iconst_0
	isub
	iload_2
	iastore
	aload_3
	iload_2
	iconst_0
	isub
	iaload
	aload_1
	iload_2
	iconst_0
	isub
	iaload
	if_icmpgt Label12
	iconst_1
	goto Label13
Label12:
	iconst_0
Label13:
	ifeq Label14
	iload_2
	i2f
	invokestatic io/putFloatLn(F)V
	goto Label15
Label14:
	ldc "Java"
	invokestatic io/putStringLn(Ljava/lang/String;)V
Label15:
Label9:
	iload_2
	iconst_1
	isub
	istore_2
	goto Label11
Label10:
Label8:
Label3:
Label1:
	return
.limit stack 6
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
