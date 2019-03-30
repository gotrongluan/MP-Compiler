.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static a [I
.field static b [I

.method public static foo([I[I)[I
.var 0 is a [I from Label0 to Label1
.var 1 is b [I from Label0 to Label1
Label0:
	bipush 6
	newarray int
	astore_2
	iconst_0
	istore_3
Label4:
	iload_3
	iconst_5
	if_icmpgt Label3
	iload_3
	iconst_3
	if_icmpge Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	ifeq Label7
	aload_2
	iload_3
	iconst_0
	isub
	aload_0
	iload_3
	iconst_0
	isub
	iaload
	iastore
	goto Label8
Label7:
	aload_2
	iload_3
	iconst_0
	isub
	aload_1
	iload_3
	iconst_3
	isub
	iconst_0
	isub
	iaload
	iastore
Label8:
Label2:
	iload_3
	iconst_1
	iadd
	istore_3
	goto Label4
Label3:
	aload_2
	areturn
Label1:
.limit stack 6
.limit locals 4
.end method

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	getstatic MPClass.a [I
	iconst_0
	iconst_0
	isub
	iconst_2
	iastore
	getstatic MPClass.a [I
	iconst_1
	iconst_0
	isub
	bipush 12
	iastore
	getstatic MPClass.a [I
	iconst_2
	iconst_0
	isub
	sipush 2000
	iastore
	getstatic MPClass.b [I
	iconst_0
	iconst_0
	isub
	bipush 16
	iastore
	getstatic MPClass.b [I
	iconst_1
	iconst_0
	isub
	bipush 11
	iastore
	getstatic MPClass.b [I
	iconst_2
	iconst_0
	isub
	sipush 1998
	iastore
	iconst_0
	istore_1
Label4:
	iload_1
	iconst_5
	if_icmpgt Label3
	getstatic MPClass.a [I
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	getstatic MPClass.b [I
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	invokestatic MPClass/foo([I[I)[I
	iload_1
	iconst_0
	isub
	iaload
	invokestatic io/putInt(I)V
Label2:
	iload_1
	iconst_1
	iadd
	istore_1
	goto Label4
Label3:
Label1:
	return
.limit stack 9
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
	newarray int
	putstatic MPClass.a [I
	iconst_3
	newarray int
	putstatic MPClass.b [I
	return
.limit stack 1
.limit locals 0
.end method
