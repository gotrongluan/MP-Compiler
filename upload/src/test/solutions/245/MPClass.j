.source MPClass.java
.class public MPClass
.super java/lang/Object

.method public static ha_arr()[I
Label0:
	bipush 7
	newarray int
	astore_0
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
	iload_1
	iload_1
	imul
	iastore
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
Label3:
	aload_0
	areturn
Label1:
.limit stack 4
.limit locals 2
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	invokestatic MPClass/ha_arr()[I
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	invokestatic MPClass/foo([I)V
Label1:
	return
.limit stack 1
.limit locals 1
.end method

.method public static foo([I)V
.var 0 is a [I from Label0 to Label1
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
	iaload
	i2f
	invokestatic MPClass/ha_f_space(F)V
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
	iconst_1
	iadd
	iastore
Label5:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label7
Label6:
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
