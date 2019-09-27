# Decoding Arithmetic Expressions from Assembly Code

You will be creating a file called `hw3_arith.c`, which can be built from the
given Makefile to create the following complete assembly file:

```hw3_arith_complete.s
	.file	"hw3_arith.c"
	.text
	.globl	arith1
	.type	arith1, @function
arith1:
.LFB0:
	.cfi_startproc
	addq	%rdx, %rdi
	movq	%rsi, %rax
	subq	%rdi, %rax
	salq	$6, %rsi
	addq	%rsi, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	arith1, .-arith1
	.globl	arith2
	.type	arith2, @function
arith2:
.LFB1:
	.cfi_startproc
	movslq	%edi, %rax
	imulq	%rdx, %rax
	subq	$88, %rax
	imulq	%rsi, %rax
	ret
	.cfi_endproc
.LFE1:
	.size	arith2, .-arith2
	.globl	arith3
	.type	arith3, @function
arith3:
.LFB2:
	.cfi_startproc
	movzbl	%dil, %edi
	movzbl	%sil, %esi
	addl	%edi, %esi
	movl	%esi, %eax
	sall	$7, %eax
	addl	%esi, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	arith3, .-arith3
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04.3) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
```

## Important Notes

- Work in stages: finish function *arith1* in your `hw3_arith.c` file. The move on to function *arith2* and then *arith3*.

- The function *arith1* should contain the multiplication operator in one and only one expression in your code. It has no shift operators.

- Casting is used in some of these functions to widen variables. Make certain you use explicit casting, not implicit casting.


## A convenience for checking your work

The makefile has a way to check how your work is progressing.  This will only
work once you have created your `hw3_arith.c` file and compiled it with make to
create a `hw3_arith.s` file Type:

	make compare

This runs a unix command called diff that can compare 2 files. There is a
complete version of the expected assembly code called `hw3_arith_complete.s`.
When you have everything correct, you will get nothing returned when you type
the above `make compare` command. When things are different between your .s and
the completed one, you may get something like this:

	diff hw3_arith.s hw3_arith_complete.s
	14c14
	<       addl    %rdi, %rdx
	---
	>       addq    %rdi, %rdx
	make: *** [compare] Error 1
	
Lines with a < in front of them are from your file and lines with a > in front of them are corresponding lines in the correct complete version.

When a whole function is still missing as you work, you should see something like this, example, where arith3 is not completed yet:

```
	diff hw3_arith.s hw3_arith_complete.s
29a30,44
>       .globl  arith3
>       .type   arith3, @function
> arith3:
> .LFB2:
>       .cfi_startproc
>       movzbl  %dil, %edi
>       movzbl  %sil, %esi
>       addl    %edi, %esi
>       movl    %esi, %eax
>       sall    $7, %eax
>       addl    %esi, %eax
>       ret
>       .cfi_endproc
> .LFE2:
>       .size   arith3, .-arith3
make: *** [compare] Error 1
```

If you are curious, your can type `man diff` to find out more about this new linux command, or look up more about it by doing a web search.

## Expectations for code

This example is fairly simple, so the only thing that you need to do is comment your code file with a header that contains your name.

No extensive testing needed here, of course- just devise the C code that compiles to the above assembly.
