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
Label4:
	iload_1
	bipush 10
	if_icmpgt Label3
	iconst_0
	istore_2
Label7:
	iload_2
	bipush 10
	if_icmpgt Label6
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
	if_icmpne Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	ifeq Label10
	iload 4
	iconst_1
	iadd
	istore 4
	iload_1
	iload_2
	if_icmpne Label11
	iconst_1
	goto Label12
Label11:
	iconst_0
Label12:
	ifeq Label13
	iload_3
	iconst_1
	iadd
	istore_3
Label13:
Label10:
Label5:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label7
Label6:
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
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
Label4:
	iload_1
	bipush 10
	if_icmpgt Label6
	iconst_1
	goto Label7
Label6:
	iconst_0
Label7:
	ifeq Label5
	getstatic MPClass.arr [I
	iload_1
	iconst_0
	isub
	iload_1
	iastore
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
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
