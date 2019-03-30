.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static arr [I

.method public static counting(I)I
.var 0 is n I from Label0 to Label1
Label0:
	iconst_0
	istore 4
	iload 4
	istore_3
	iconst_0
	istore_1
Label2:
	iload_1
	bipush 10
	if_icmpgt Label4
	iconst_1
	goto Label5
Label4:
	iconst_0
Label5:
	ifeq Label3
	iconst_0
	istore_2
Label6:
	iload_2
	bipush 10
	if_icmpgt Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	ifeq Label7
	getstatic MPClass.arr [I
	iload_1
	iconst_0
	isub
	iaload
	getstatic MPClass.arr [I
	iload_2
	iconst_0
	isub
	iaload
	iadd
	iload_0
	if_icmpne Label10
	iconst_1
	goto Label11
Label10:
	iconst_0
Label11:
	ifeq Label12
	iload 4
	iconst_1
	iadd
	istore 4
	iload_1
	iload_2
	if_icmpne Label13
	iconst_1
	goto Label14
Label13:
	iconst_0
Label14:
	ifeq Label15
	iload_3
	iconst_1
	iadd
	istore_3
Label15:
Label12:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label6
Label7:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label2
Label3:
	iload 4
	iload_3
	isub
	iconst_2
	idiv
	iload_3
	iadd
	ireturn
Label1:
.limit stack 4
.limit locals 5
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
.var 1 is i I from Label2 to Label3
Label2:
	iconst_0
	istore_1
Label6:
	iload_1
	bipush 10
	if_icmpgt Label5
	getstatic MPClass.arr [I
	iload_1
	iconst_0
	isub
	iload_1
	iastore
Label4:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label6
Label5:
Label3:
	bipush 14
	invokestatic MPClass/counting(I)I
	invokestatic io/putIntLn(I)V
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
	bipush 11
	newarray int
	putstatic MPClass.arr [I
	return
.limit stack 1
.limit locals 0
.end method
