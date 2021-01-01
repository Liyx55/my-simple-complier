	.file	"test.c"
	.text
	.comm	temp0,4
	.comm	temp1,4
	.comm	temp2,4
	.section	.rodata
.str3:
	.string	"%d %d %d"
.str4:
	.string	"%d %d %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.str3(%rip), %rdi
	leaq	temp0(%rip), %rax
	movq	%rax, %rsi
	leaq	temp1(%rip), %rax
	movq	%rax, %rdx
	leaq	temp2(%rip), %rax
	movq	%rax, %rcx
	call	__isoc99_scanf@PLT
	leaq	.str4(%rip), %rdi
	movq	temp0(%rip), %rsi
	movq	temp1(%rip), %rdx
	movq	temp2(%rip), %rcx
	call	printf@PLT
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"CODE BY LiYanxin"
	.section	.note.GNU-stack,"",@progbits
