.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a [I
.field static b [F
.field static c [Z
.field static d [Ljava/lang/String;

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_2
	istore_1
Label4:
	iload_1
	iconst_1
	ineg
	if_icmplt Label3
	getstatic MPClass.a [I
	iload_1
	iconst_m1
	isub
	iaload
	invokestatic io/putIntLn(I)V
Label2:
	iload_1
	iconst_1
	isub
	istore_1
	goto Label4
Label3:
	iconst_2
	istore_1
Label7:
	iload_1
	iconst_1
	ineg
	if_icmplt Label6
	getstatic MPClass.b [F
	iload_1
	iconst_m1
	isub
	faload
	invokestatic io/putFloatLn(F)V
Label5:
	iload_1
	iconst_1
	isub
	istore_1
	goto Label7
Label6:
	iconst_0
	istore_1
Label10:
	iload_1
	iconst_2
	if_icmpgt Label9
	getstatic MPClass.c [Z
	iload_1
	iconst_0
	isub
	baload
	invokestatic io/putBoolLn(Z)V
Label8:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label10
Label9:
	iconst_4
	ineg
	istore_1
Label13:
	iload_1
	iconst_3
	ineg
	if_icmpgt Label12
	getstatic MPClass.d [Ljava/lang/String;
	iload_1
	bipush -10
	isub
	aaload
	invokestatic io/putStringLn(Ljava/lang/String;)V
Label11:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label13
Label12:
	iconst_2
	istore_1
Label16:
	iload_1
	iconst_1
	ineg
	if_icmpgt Label15
	getstatic MPClass.a [I
	iload_1
	iconst_m1
	isub
	iaload
	iload_1
	isub
	invokestatic io/putIntLn(I)V
Label14:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label16
Label15:
	iconst_5
	istore_1
Label19:
	iload_1
	iconst_0
	if_icmpgt Label18
	ldc "trong luan"
	invokestatic io/putStringLn(Ljava/lang/String;)V
Label17:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label19
Label18:
Label1:
	return
.limit stack 3
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

.method public static <clinit>()V
	iconst_4
	newarray int
	putstatic MPClass.a [I
	iconst_4
	newarray float
	putstatic MPClass.b [F
	bipush 6
	newarray boolean
	putstatic MPClass.c [Z
	bipush 9
	anewarray java/lang/String
	putstatic MPClass.d [Ljava/lang/String;
	return
.limit stack 1
.limit locals 0
.end method
