.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static n I
.field static a [F

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	bipush 20
	putstatic MPClass.n I
	iconst_1
	istore_1
Label4:
	iload_1
	getstatic MPClass.n I
	if_icmpgt Label3
	getstatic MPClass.a [F
	iload_1
	iconst_0
	isub
	iload_1
	iload_1
	iconst_1
	iadd
	imul
	iload_1
	iconst_2
	iadd
	imul
	i2f
	bipush 6
	i2f
	fdiv
	fastore
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
Label3:
	getstatic MPClass.a [F
	invokevirtual [F/clone()Ljava/lang/Object;
	checkcast [F
	invokestatic MPClass/ha_log_arr([F)V
Label1:
	return
.limit stack 5
.limit locals 2
.end method

.method public static ha_log_arr([F)V
.var 0 is a [F from Label0 to Label1
Label0:
	iconst_1
	istore_1
Label4:
	iload_1
	getstatic MPClass.n I
	if_icmpgt Label3
	aload_0
	iload_1
	iconst_0
	isub
	faload
	invokestatic MPClass/ha_f_space(F)V
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
Label3:
	invokestatic io/putLn()V
Label1:
	return
.limit stack 3
.limit locals 2
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
	newarray float
	putstatic MPClass.a [F
	return
.limit stack 1
.limit locals 0
.end method
