	.file	"arith.c"
	.text
	.globl	arith1
	.type	arith1, @function
arith1:
.LFB0:
	.cfi_startproc
	movq	%rsi, %rax
	salq	$5, %rax
	addq	%rax, %rsi
	leaq	0(,%rsi,4), %rcx
	movq	%rdi, %rsi
	negq	%rsi
	leaq	0(,%rsi,8), %rax
	subq	%rdi, %rax
	leaq	0(,%rax,8), %rsi
	sarq	$4, %rdx
	addq	%rsi, %rcx
	leaq	8(%rdx,%rcx), %rax
	ret
	.cfi_endproc
.LFE0:
	.size	arith1, .-arith1
	.globl	arith2
	.type	arith2, @function
arith2:
.LFB1:
	.cfi_startproc
	leaq	(%rdx,%rsi,2), %rdx
	movslq	%edi, %rdi
	leaq	0(,%rdx,8), %rax
	subq	%rdx, %rax
	addq	%rdi, %rax
	salq	$6, %rax
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
	sall	$5, %edi
	addl	%edi, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	arith3, .-arith3
	.ident	"GCC: (GNU) 8.3.1 20190311 (Red Hat 8.3.1-3)"
	.section	.note.GNU-stack,"",@progbits
