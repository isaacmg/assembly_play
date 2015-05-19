	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$24, %esp
	leal	-4(%ebp), %eax
	movl	%eax, 4(%esp)
	movl	$L_.str, (%esp)
	calll	_scanf
	movl	-4(%ebp), %eax
	addl	$2, %eax
	movl	%eax, 4(%esp)
	movl	$L_.str1, (%esp)
	calll	_printf
	xorl	%eax, %eax
	addl	$24, %esp
	popl	%ebp
	retl

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

L_.str1:                                ## @.str1
	.asciz	"%d\n"


.subsections_via_symbols
