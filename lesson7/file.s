	.file	"file.c"
	.section	.rodata
.LC0:
	.string	"%d\n"
.LC1:
	.string	"hello PRINT %d\n"
.LC2:
	.string	"yes"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$100, -4(%rbp)
	movl	$100, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	printf
	movl	$100, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$100, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$100, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$100, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$100, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$100, %esi
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movl	$.LC2, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-44)"
	.section	.note.GNU-stack,"",@progbits
