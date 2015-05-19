LC0:
    .ascii "Hola el Mundo!\12\0"
    .text
    .align 4,0x90
LC1: 
	.ascii "Hello!\12\0"
	.text 
	.align 4,0x90
.globl _main
_main:
    pushl   %ebp
    movl    %esp, %ebp
   
    subl    $24, %esp
   
    movl    $LC0, (%esp)
    call    _puts
    movl    $LC1, (%esp)
    call 	_puts
    movl 10, %eax
    
    call _printf
    xorl    %eax, %eax
    leave
    ret
    .subsections_via_symbols