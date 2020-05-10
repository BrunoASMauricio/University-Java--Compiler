.class public FindMaximum
.super java/lang/Object
.method <init>()V
aload_0
invokenonvirtual java/lang/Object/<init>()V
return
.end method
.method public find_maximum([I)I
.limit stack 99
.limit locals 7
iconst_1
istore_2		;i

iload_1		;arr
iconst_0
istore_3		;maximum

while_0:
iload_2		;i
iload_1		;arr
invokevirtual null/length()I
if_icmpgt else_0
iload_2		;i
iload_1		;arr
invokevirtual null/length()I
if_icmpgt is_false_1
iconst_1
goto end_cond1
is_false_1:
iconst_0
end_cond1:
iload_1		;arr
iload_2		;i
istore 4		;value
iload_3		;maximum
iload 4		;value
if_icmpgt else_2
iload 4		;value
istore_3		;maximum
goto endif_2
else_2:
endif_2:
iload_2		;i
iconst_1
iadd
istore_2		;i
goto while_0
else_0:

iload_3		;maximum
ireturn

.end method
.method public build_test_arr()I
.limit stack 99
.limit locals 2
astore 1		;test_arr






iconst_0
ireturn

.end method
.method public get_array()[I
.limit stack 99
.limit locals 2
aload 1		;test_arr
areturn

.end method
.method public static main([Ljava/lang/String;)V
.limit stack 99
.limit locals 4
new FindMaximum
dup
invokespecial FindMaximum/<init>()V
astore 1		;fm

iload_1		;fm
invokevirtual FindMaximum/build_test_arr()I

iload_1		;fm
aload 1		;fm
invokevirtual FindMaximum/get_array()[I
invokevirtual FindMaximum/find_maximum([I)I
invokestatic ioPlus/printResult(I)V

return
.end method

