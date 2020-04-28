null.class public Simple
.super java/lang/Object
.method public<init>()V
aload_0
invokenonvirtual java/lang/Object/<init>()V
return
.end method
.method public static main([Ljava/lang/String;)V
.limit stack 99
.limit locals 5
bipush 30
istore_1		;a
iconst_0
bipush 10
isub
istore_2		;b
new Simple
dup
invokespecial Simple/<init>()V
astore 3		;simple
aload 3		;simple
iload_1		;a
iload_2		;b
simple.LENGTH
istore 4		;c
iload 4		;c
invokestatic io/println(I)V
return
.end method
.method public add(II)I
.limit stack 99
.limit locals 2
iload_1		;a
iload_2		;b
iadd
ireturn
.end method

