.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static x I
.field static n I
.field static m I
.field static a [I

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	sipush 10007
	putstatic MPClass.m I
	iconst_1
	istore_1
Label4:
	iload_1
	bipush 8
	if_icmpgt Label3
.var 3 is l I from Label5 to Label6
.var 4 is r I from Label5 to Label6
Label5:
	iload_1
	iconst_4
	if_icmple Label7
	iconst_1
	goto Label8
Label7:
	iconst_0
Label8:
	ifeq Label9
	bipush 50
	istore_3
	bipush 55
	istore 4
	goto Label10
Label9:
	iconst_0
	istore_3
	iconst_5
	istore 4
Label10:
	iload_3
	istore_2
Label13:
	iload_2
	iload 4
	if_icmpgt Label12
	iload_1
	invokestatic MPClass/ha_i_space(I)V
	ldc "^ "
	invokestatic io/putString(Ljava/lang/String;)V
	iload_2
	invokestatic MPClass/ha_i_space(I)V
	ldc "= "
	invokestatic io/putString(Ljava/lang/String;)V
	iload_1
	iload_2
	invokestatic MPClass/pow(II)I
	invokestatic io/putIntLn(I)V
Label11:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label13
Label12:
Label6:
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
Label3:
Label1:
	return
.limit stack 2
.limit locals 5
.end method

.method public static pow(II)I
.var 0 is x I from Label0 to Label1
.var 1 is n I from Label0 to Label1
Label0:
	iload_1
	iconst_0
	if_icmpne Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifeq Label4
	iconst_1
	ireturn
Label4:
.var 2 is res I from Label5 to Label6
Label5:
	iload_0
	iload_1
	iconst_2
	idiv
	invokestatic MPClass/pow(II)I
	istore_2
	iload_2
	iload_2
	imul
	getstatic MPClass.m I
	irem
	istore_2
	iload_1
	iconst_2
	irem
	iconst_1
	if_icmpne Label7
	iconst_1
	goto Label8
Label7:
	iconst_0
Label8:
	ifeq Label9
	iload_2
	iload_0
	imul
	getstatic MPClass.m I
	irem
	istore_2
Label9:
	iload_2
	ireturn
Label6:
Label1:
.limit stack 3
.limit locals 3
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
