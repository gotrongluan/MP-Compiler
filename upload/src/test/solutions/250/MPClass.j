.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static n I
.field static m I
.field static a [I

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	ldc 50000
	putstatic MPClass.n I
	ldc 1000000009
	putstatic MPClass.m I
	getstatic MPClass.a [I
	iconst_1
	iconst_0
	isub
	iconst_1
	iastore
	getstatic MPClass.a [I
	iconst_2
	iconst_0
	isub
	iconst_2
	iastore
	iconst_3
	istore_1
Label4:
	iload_1
	getstatic MPClass.n I
	if_icmpgt Label3
	getstatic MPClass.a [I
	iload_1
	iconst_0
	isub
	iconst_3
	getstatic MPClass.a [I
	iload_1
	iconst_1
	isub
	iconst_0
	isub
	iaload
	imul
	getstatic MPClass.m I
	irem
	iconst_4
	getstatic MPClass.a [I
	iload_1
	iconst_2
	isub
	iconst_0
	isub
	iaload
	imul
	getstatic MPClass.m I
	irem
	isub
	getstatic MPClass.m I
	iadd
	getstatic MPClass.m I
	irem
	iastore
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
Label3:
	invokestatic MPClass/ha_check_arr()I
	invokestatic MPClass/ha_i_space(I)V
	iconst_1
	getstatic MPClass.n I
	invokestatic MPClass/sort(II)V
	invokestatic MPClass/ha_check_arr()I
	invokestatic MPClass/ha_i_space(I)V
Label1:
	return
.limit stack 9
.limit locals 2
.end method

.method public static sort(II)V
.var 0 is l I from Label0 to Label1
.var 1 is r I from Label0 to Label1
Label0:
	iload_0
	iload_1
	if_icmplt Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	return
Label4:
	iload_0
	iload_1
	iadd
	iconst_2
	idiv
	istore_2
	iload_0
	istore_3
	iload_1
	istore 4
Label5:
	iload_3
	iload 4
	if_icmpgt Label7
	iconst_1
	goto Label8
Label7:
	iconst_0
Label8:
	ifeq Label6
Label9:
	getstatic MPClass.a [I
	iload_3
	iconst_0
	isub
	iaload
	getstatic MPClass.a [I
	iload_2
	iconst_0
	isub
	iaload
	if_icmpge Label11
	iconst_1
	goto Label12
Label11:
	iconst_0
Label12:
	ifeq Label10
	iload_3
	iconst_1
	iadd
	istore_3
	goto Label9
Label10:
Label13:
	getstatic MPClass.a [I
	iload 4
	iconst_0
	isub
	iaload
	getstatic MPClass.a [I
	iload_2
	iconst_0
	isub
	iaload
	if_icmple Label15
	iconst_1
	goto Label16
Label15:
	iconst_0
Label16:
	ifeq Label14
	iload 4
	iconst_1
	isub
	istore 4
	goto Label13
Label14:
	iload_3
	iload 4
	if_icmpgt Label17
	iconst_1
	goto Label18
Label17:
	iconst_0
Label18:
	ifeq Label19
.var 5 is tmp I from Label20 to Label21
Label20:
	getstatic MPClass.a [I
	iload_3
	iconst_0
	isub
	iaload
	istore 5
	getstatic MPClass.a [I
	iload_3
	iconst_0
	isub
	getstatic MPClass.a [I
	iload 4
	iconst_0
	isub
	iaload
	iastore
	getstatic MPClass.a [I
	iload 4
	iconst_0
	isub
	iload 5
	iastore
Label21:
	iload_3
	iconst_1
	iadd
	istore_3
	iload 4
	iconst_1
	isub
	istore 4
Label19:
	goto Label5
Label6:
	iload_0
	iload 4
	invokestatic MPClass/sort(II)V
	iload_3
	iload_1
	invokestatic MPClass/sort(II)V
Label1:
	return
.limit stack 5
.limit locals 6
.end method

.method public static ha_check_arr()I
Label0:
.var 1 is res I from Label2 to Label3
Label2:
	iconst_0
	istore_1
	iconst_1
	istore_0
Label6:
	iload_0
	getstatic MPClass.n I
	if_icmpgt Label5
	iload_1
	getstatic MPClass.a [I
	iload_0
	iconst_0
	isub
	iaload
	iload_0
	imul
	getstatic MPClass.m I
	irem
	iadd
	getstatic MPClass.m I
	irem
	istore_1
Label4:
	iload_0
	iconst_1
	iadd
	istore_0
	goto Label6
Label5:
	iload_1
	ireturn
Label3:
Label1:
.limit stack 4
.limit locals 2
.end method

.method public static ha_log_arr()V
Label0:
	iconst_1
	istore_0
Label4:
	iload_0
	getstatic MPClass.n I
	if_icmpgt Label3
	getstatic MPClass.a [I
	iload_0
	iconst_0
	isub
	iaload
	invokestatic MPClass/ha_i_space(I)V
Label2:
	iload_0
	iconst_1
	iadd
	istore_0
	goto Label4
Label3:
	invokestatic io/putLn()V
Label1:
	return
.limit stack 3
.limit locals 1
.end method

.method public static ha_i_space(I)V
.var 0 is ha0852i I from Label0 to Label1
Label0:
	iload_0
	invokestatic io/putInt(I)V
	ldc " "
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

.method public static <clinit>()V
	ldc 100001
	newarray int
	putstatic MPClass.a [I
	return
.limit stack 1
.limit locals 0
.end method
