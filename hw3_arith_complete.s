.file	"hw3_arith.c"
	.text
	.globl	arith1
	.type	arith1, @function
arith1:
.LFB0:
	.cfi_startproc
	addq	%rdi, %rdx
	movq	%rsi, %rax
	subq	%rdx, %rax
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
	movslq	%edi, %rdi
	imulq	%rdx, %rdi
	movl	$5, %eax
	subq	%rdi, %rax
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
	movzbl	%sil, %eax
	addl	%edi, %eax
	movl	%eax, %edi
	sall	$7, %edi
	addl	%edi, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	arith3, .-arith3
	.ident	"GCC: (Ubuntu 8.3.0-6ubuntu1) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
