.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static x [Z

.method public static foo([Z)V
.var 0 is x [Z from Label0 to Label1
Label0:
	iconst_0
	istore_1
Label4:
	iload_1
	iconst_2
	if_icmpgt Label3
	aload_0
	iload_1
	iconst_0
	isub
	aload_0
	iload_1
	iconst_0
	isub
	baload
	ifne Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	bastore
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
Label3:
Label1:
	return
.limit stack 5
.limit locals 2
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_0
	istore_1
Label4:
	iload_1
	iconst_2
	if_icmpgt Label3
	getstatic MPClass.x [Z
	iload_1
	iconst_0
	isub
	iload_1
	iconst_1
	if_icmple Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	bastore
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
Label3:
	iconst_0
	istore_1
Label9:
	iload_1
	iconst_2
	if_icmpgt Label8
	getstatic MPClass.x [Z
	iload_1
	iconst_0
	isub
	baload
	invokestatic io/putBool(Z)V
Label7:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label9
Label8:
	invokestatic io/putLn()V
	getstatic MPClass.x [Z
	invokevirtual [Z/clone()Ljava/lang/Object;
	checkcast [Z
	invokestatic MPClass/foo([Z)V
	iconst_0
	istore_1
Label12:
	iload_1
	iconst_2
	if_icmpgt Label11
	getstatic MPClass.x [Z
	iload_1
	iconst_0
	isub
	baload
	invokestatic io/putBool(Z)V
Label10:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label12
Label11:
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

.method public static <clinit>()V
	iconst_3
	newarray boolean
	putstatic MPClass.x [Z
	return
.limit stack 1
.limit locals 0
.end method
