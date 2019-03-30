.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static my_arr [I
.field static my_arr_1 [Z

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_1
	iconst_2
	isub
	iconst_3
	iconst_4
	imul
	iconst_5
	idiv
	iadd
	istore_1
	getstatic MPClass.my_arr [I
	iconst_0
	iconst_0
	isub
	iload_1
	bipush 7
	iconst_5
	imul
	isub
	iastore
	getstatic MPClass.my_arr [I
	iconst_1
	iconst_0
	isub
	getstatic MPClass.my_arr [I
	iconst_0
	iconst_0
	isub
	iaload
	iconst_1
	ineg
	imul
	iastore
	getstatic MPClass.my_arr_1 [Z
	iconst_0
	iconst_0
	isub
	getstatic MPClass.my_arr [I
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
	bastore
	getstatic MPClass.my_arr_1 [Z
	iconst_1
	iconst_0
	isub
	getstatic MPClass.my_arr [I
	iconst_1
	iconst_0
	isub
	iaload
	iconst_0
	if_icmple Label4
	iconst_1
	goto Label5
Label4:
	iconst_0
Label5:
	bastore
	getstatic MPClass.my_arr_1 [Z
	iconst_2
	iconst_0
	isub
	getstatic MPClass.my_arr_1 [Z
	iconst_0
	iconst_0
	isub
	baload
	getstatic MPClass.my_arr_1 [Z
	iconst_1
	iconst_0
	isub
	baload
	ifne Label6
	iconst_1
	goto Label7
Label6:
	iconst_0
Label7:
	imul
	ifeq Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	bastore
	iconst_2
	istore_1
Label12:
	iload_1
	iconst_0
	if_icmplt Label11
	getstatic MPClass.my_arr_1 [Z
	iload_1
	iconst_0
	isub
	baload
	invokestatic io/putBoolLn(Z)V
Label10:
	iload_1
	iconst_1
	isub
	istore_1
	goto Label12
Label11:
	iconst_2
	istore_1
Label15:
	iload_1
	iconst_0
	if_icmplt Label14
	getstatic MPClass.my_arr [I
	iload_1
	iconst_0
	isub
	iaload
	invokestatic io/putIntLn(I)V
Label13:
	iload_1
	iconst_1
	isub
	istore_1
	goto Label15
Label14:
Label1:
	return
.limit stack 10
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
	bipush 6
	newarray int
	putstatic MPClass.my_arr [I
	bipush 6
	newarray boolean
	putstatic MPClass.my_arr_1 [Z
	return
.limit stack 1
.limit locals 0
.end method
