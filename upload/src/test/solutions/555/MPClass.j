.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static x I
.field static my_var [F

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	ldc 1611931
	putstatic MPClass.x I
	getstatic MPClass.x I
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	ineg
	invokestatic io/putInt(I)V
	ldc "PPL 2018"
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
	bipush 8
	newarray float
	putstatic MPClass.my_var [F
	return
.limit stack 1
.limit locals 0
.end method
