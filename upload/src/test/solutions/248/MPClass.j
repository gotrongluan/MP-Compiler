.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static n I
.field static m I

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	ldc 100001
	newarray int
	astore_1
	sipush 10000
	putstatic MPClass.n I
	ldc 1000000009
	putstatic MPClass.m I
	aload_1
	iconst_0
	iconst_0
	isub
	iconst_1
	iastore
	aload_1
	iconst_1
	iconst_0
	isub
	iconst_2
	iastore
	iconst_2
	istore_2
Label4:
	iload_2
	getstatic MPClass.n I
	if_icmpgt Label3
	aload_1
	iload_2
	iconst_0
	isub
	aload_1
	iload_2
	iconst_1
	isub
	iconst_0
	isub
	iaload
	aload_1
	iload_2
	iconst_2
	isub
	iconst_0
	isub
	iaload
	iadd
	getstatic MPClass.m I
	irem
	iastore
Label2:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label4
Label3:
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	sipush 1597
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	sipush 10946
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	ldc 1346269
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	ldc 165580141
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	ldc 784974805
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	ldc 337007687
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	ldc 807526340
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	ldc 147860051
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	ldc 274044507
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	ldc 203070066
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	ldc 150716683
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	ldc 992750503
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	ldc 453021451
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	ldc 941642764
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	ldc 163684284
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	ldc 564665913
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
	aload_1
	invokevirtual [I/clone()Ljava/lang/Object;
	checkcast [I
	ldc 102915696
	invokestatic MPClass/indexOf([II)I
	invokestatic MPClass/ha_i_space(I)V
Label1:
	return
.limit stack 8
.limit locals 3
.end method

.method public static indexOf([II)I
.var 0 is a [I from Label0 to Label1
.var 1 is x I from Label0 to Label1
Label0:
	iconst_0
	istore_2
Label4:
	iload_2
	getstatic MPClass.n I
	if_icmpgt Label3
	aload_0
	iload_2
	iconst_0
	isub
	iaload
	iload_1
	if_icmpne Label5
	iconst_1
	goto Label6
Label5:
	iconst_0
Label6:
	ifeq Label7
	iload_2
	ireturn
Label7:
Label2:
	iload_2
	iconst_1
	iadd
	istore_2
	goto Label4
Label3:
	iconst_1
	ineg
	ireturn
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
