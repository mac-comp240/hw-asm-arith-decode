	.file	"arith.c"
	.text
	.globl	arith1
	.type	arith1, @function
arith1:
.LFB0:
	.cfi_startproc
	addq	%rsi, %rdx
	movq	%rdi, %rax
	subq	%rdx, %rax
	movq	%rax, %rdx
	salq	$4, %rdi
	sarq	$5, %rax
	addq	%rdi, %rdx
	addq	%rdx, %rax
	ret
	.cfi_endproc
.LFE0:
	.size	arith1, .-arith1
	.globl	arith2
	.type	arith2, @function
arith2:
.LFB1:
	.cfi_startproc
	addq	%rsi, %rdx
	movslq	%edi, %rax
	addq	%rdx, %rax
	salq	$2, %rax
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
	sall	$4, %edi
	addl	%edi, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	arith3, .-arith3
	.ident	"GCC: (GNU) 8.3.1 20190311 (Red Hat 8.3.1-3)"
	.section	.note.GNU-stack,"",@progbits
