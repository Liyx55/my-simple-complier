	.file	"test.c"
	.text
	.comm	temp0,4,4
	.comm	temp2,4,4
	.comm	temp3,4,4
	.comm	temp4,4,4
	.section	.rodata
.str1:
	.string	"%d"
.str5:
	.string	"%d\n"
	.text
	.globl	func
	.type	func, @function
func:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	.str1(%rip), %rdi
	leaq	temp0(%rip), %rax
	movq	%rax, %rsi
	call	__isoc99_scanf@PLT
	movl	temp0(%rip), %eax
	leave
	ret
	.size	func, .-func
	.globl	main
	.type	main, @function
main:
	pushq	%rbp
	movq	%rsp, %rbp
	call	func
	movl	%eax, temp2(%rip)
	movl	$1, temp3(%rip)
	movl	$1, temp4(%rip)
	movl	$1, %esi
	movl	%esi, temp4(%rip)
	jmp	.L1
.L0:
	movl	temp3(%rip), %esi
	imull	temp4(%rip), %esi
	movl	%esi, temp3(%rip)
	movl	temp4(%rip), %esi
	addl	$1, %esi
	movl	%esi, temp4(%rip)
.L1:
	movl	temp4(%rip), %esi
	cmpl	temp2(%rip), %esi
	setle	%al
	movzbl	%al, %esi
	testl	%esi, %esi
	jne	.L0
	leaq	.str5(%rip), %rdi
	movq	temp3(%rip), %rsi
	call	printf@PLT
	movl	$0, %eax
	leave
	ret
	.size	main, .-main
	.ident	"CODE BY LiYanxin"
	.section	.note.GNU-stack,"",@progbits
