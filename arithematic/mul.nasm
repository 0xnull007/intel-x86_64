SECTION .data
	var1 db 0x05
	var2 dw 0x0A
	var3 dd 0x0F

SECTION .text
	global _start

_start:
	
	mov al, [var1]
	mul byte [var1]

	mov rax, 0x3C
	mov rdi, 0x0
	syscall
