.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a I
.field static b I
.field static x F
.field static y F
.field static u Z
.field static v Z

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 10
	istore_1
Label2:
	iconst_1
	ifeq Label3
.var 2 is i I from Label4 to Label5
Label4:
	iconst_1
	putstatic MPClass.a I
	iload_1
	putstatic MPClass.b I
	iload_1
	invokestatic MPClass/ha_i_space(I)V
	getstatic MPClass.a I
	istore_2
Label8:
	iload_2
	getstatic MPClass.b I
	if_icmpgt Label7
	getstatic MPClass.a I
	getstatic MPClass.b I
	invokestatic MPClass/mid(II)F
	invokestatic MPClass/ha_f_space(F)V
Label6:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label8
Label7:
	iload_1
	iconst_0
	if_icmpne Label9
	iconst_1
	goto Label10
Label9:
	iconst_0
Label10:
	ifeq Label11
	goto Label3
Label11:
Label5:
	iload_1
	iconst_1
	isub
	istore_1
	invokestatic io/putLn()V
	goto Label2
Label3:
Label1:
	return
.limit stack 2
.limit locals 3
.end method

.method public static mid(II)F
.var 0 is a I from Label0 to Label1
.var 1 is b I from Label0 to Label1
Label0:
	iload_0
	iload_1
	iadd
	i2f
	iconst_2
	i2f
	fdiv
	freturn
Label1:
.limit stack 2
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
