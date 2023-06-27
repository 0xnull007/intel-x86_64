SECTION .data
	var: db -10 
	var1: db 127
SECTION .text
	global _start

_start:	
	movsx rax, byte [var]
	sal al, 1

	movsx rax, byte [var]
	shl al, 1


	xor rax, rax
	
	movsx rax, byte [var1]
	shl al, 1 		; var1 = 127, and shl by 1 bit will cause overflow bcz 254 can't be stored in signed 8 bits 

	mov rax, 60
	mov rdi, 0
	syscall
