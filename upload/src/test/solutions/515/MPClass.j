.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static i I

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 9
	newarray int
	astore_1
	bipush 10
	ineg
	putstatic MPClass.i I
Label4:
	getstatic MPClass.i I
	iconst_2
	ineg
	if_icmpgt Label3
	aload_1
	getstatic MPClass.i I
	bipush -10
	isub
	getstatic MPClass.i I
	iconst_1
	ineg
	imul
	iastore
Label2:
	getstatic MPClass.i I
	iconst_1
	iadd
	putstatic MPClass.i I
	goto Label4
Label3:
	bipush 10
	ineg
	putstatic MPClass.i I
Label7:
	getstatic MPClass.i I
	iconst_2
	ineg
	if_icmpgt Label6
	aload_1
	getstatic MPClass.i I
	bipush -10
	isub
	iaload
	iconst_2
	irem
	iconst_0
	if_icmpne Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	ifeq Label10
	aload_1
	getstatic MPClass.i I
	bipush -10
	isub
	iaload
	invokestatic io/putIntLn(I)V
Label10:
Label5:
	getstatic MPClass.i I
	iconst_1
	iadd
	putstatic MPClass.i I
	goto Label7
Label6:
Label1:
	return
.limit stack 4
.limit locals 2
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
