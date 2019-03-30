.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 7
	newarray boolean
	astore_1
	iconst_4
	istore_2
Label4:
	iload_2
	bipush 10
	if_icmpgt Label3
	aload_1
	iload_2
	iconst_4
	isub
	iload_2
	iconst_3
	idiv
	iconst_3
	if_icmpge Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	ifne Label7
	iload_2
	iconst_3
	idiv
	iconst_5
	if_icmple Label9
	iconst_1
	goto Label10
Label9:
	iconst_0
Label10:
	ifne Label7
	iconst_0
	goto Label8
Label7:
	iconst_1
Label8:
	bastore
Label2:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label4
Label3:
	aload_1
	invokevirtual [Z/clone()Ljava/lang/Object;
	checkcast [Z
	invokestatic MPClass/foo([Z)V
	invokestatic io/putLn()V
	iconst_4
	istore_2
Label13:
	iload_2
	bipush 10
	if_icmpgt Label12
	aload_1
	iload_2
	iconst_4
	isub
	baload
	invokestatic MPClass/ha_b_space(Z)V
Label11:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label13
Label12:
Label1:
	return
.limit stack 4
.limit locals 3
.end method

.method public static foo([Z)V
.var 0 is a [Z from Label0 to Label1
Label0:
	iconst_4
	istore_1
Label4:
	iload_1
	bipush 10
	if_icmpgt Label3
	aload_0
	iload_1
	iconst_4
	isub
	baload
	invokestatic MPClass/ha_b_space(Z)V
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
Label3:
	iconst_4
	istore_1
Label7:
	iload_1
	bipush 10
	if_icmpgt Label6
	aload_0
	iload_1
	iconst_4
	isub
	iload_1
	iconst_3
	idiv
	iconst_3
	if_icmpge Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	ifne Label10
	iload_1
	iconst_3
	idiv
	iconst_5
	if_icmple Label12
	iconst_1
	goto Label13
Label12:
	iconst_0
Label13:
	ifne Label10
	iconst_0
	goto Label11
Label10:
	iconst_1
Label11:
	ifne Label14
	iconst_1
	goto Label15
Label14:
	iconst_0
Label15:
	bastore
Label5:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label7
Label6:
	iconst_4
	istore_1
Label18:
	iload_1
	bipush 10
	if_icmpgt Label17
	aload_0
	iload_1
	iconst_4
	isub
	baload
	invokestatic MPClass/ha_b_space(Z)V
Label16:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label18
Label17:
Label1:
	return
.limit stack 4
.limit locals 2
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

.method public static ha_f_space(F)V
.var 0 is ha0852f F from Label0 to Label1
Label0:
	fload_0
	invokestatic io/putFloat(F)V
	ldc " "
	invokestatic io/putString(Ljava/lang/String;)V
Label1:
	return
.limit stack 1
.limit locals 1
.end method

.method public static ha_b_space(Z)V
.var 0 is ha0852b Z from Label0 to Label1
Label0:
	iload_0
	invokestatic io/putBool(Z)V
	ldc " "
	invokestatic io/putString(Ljava/lang/String;)V
Label1:
	return
.limit stack 1
.limit locals 1
.end method

.method public static ha_str_1()Ljava/lang/String;
Label0:
	ldc "0852 1"
	areturn
Label1:
.limit stack 1
.limit locals 0
.end method

.method public static ha_str_2()Ljava/lang/String;
Label0:
	ldc "0852 2"
	areturn
Label1:
.limit stack 1
.limit locals 0
.end method

.method public static ha_str_3()Ljava/lang/String;
Label0:
	ldc "0852 3"
	areturn
Label1:
.limit stack 1
.limit locals 0
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
