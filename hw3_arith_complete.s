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
