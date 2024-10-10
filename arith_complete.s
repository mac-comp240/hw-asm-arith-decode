	.file	"arith.c"
	.text
	.globl	arith1
	.type	arith1, @function
arith1:
.LFB0:
	.cfi_startproc
	endbr64
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
	endbr64
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
	endbr64
	movzbl	%dil, %edi
	movzbl	%sil, %esi
	addl	%esi, %edi
	movl	%edi, %eax
	sall	$7, %eax
	addl	%edi, %eax
	ret
	.cfi_endproc
.LFE2:
	.size	arith3, .-arith3
	.ident	"GCC: (Ubuntu 13.2.0-23ubuntu4) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
