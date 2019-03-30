.source MPClass.java
.class public MPClass
.super java/lang/Object
.field static x Z

.method public static main([Ljava/lang/String;)V
.var 0 is args [Ljava/lang/String; from Label0 to Label1
Label0:
	iconst_1
	putstatic MPClass.x Z
	getstatic MPClass.x Z
	ifne Label2
	iconst_1
	goto Label3
Label2:
	iconst_0
Label3:
	ifne Label4
	iconst_1
	goto Label5
Label4:
	iconst_0
Label5:
	ifne Label6
	iconst_1
	goto Label7
Label6:
	iconst_0
Label7:
	ifne Label8
	iconst_1
	goto Label9
Label8:
	iconst_0
Label9:
	ifne Label10
	iconst_1
	goto Label11
Label10:
	iconst_0
Label11:
	ifne Label12
	iconst_1
	goto Label13
Label12:
	iconst_0
Label13:
	ifne Label14
	iconst_1
	goto Label15
Label14:
	iconst_0
Label15:
	ifne Label16
	iconst_1
	goto Label17
Label16:
	iconst_0
Label17:
	ifne Label18
	iconst_1
	goto Label19
Label18:
	iconst_0
Label19:
	ifne Label20
	iconst_1
	goto Label21
Label20:
	iconst_0
Label21:
	ifne Label22
	iconst_1
	goto Label23
Label22:
	iconst_0
Label23:
	ifne Label24
	iconst_1
	goto Label25
Label24:
	iconst_0
Label25:
	invokestatic io/putBool(Z)V
	ldc "PPL 2018"
	invokestatic io/putString(Ljava/lang/String;)V
Label1:
	return
.limit stack 2
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
