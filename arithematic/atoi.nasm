SECTION .data
	var db '2' 
	
SECTION .text
	global _start

_start:

; converting ASCII value into integer
 
	mov al, byte [var]
	AND al, 0xCF	; 0xCF = 1100 1111

	mov rax, 1
	mov rdi, 1
	mov rdx, 	
		
	mov rax, 60
	mov rdi, 0
	syscall
	
