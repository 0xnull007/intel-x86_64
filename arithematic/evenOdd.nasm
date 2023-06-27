SECTION .data
	var db 10
	o_msg db "The number  is odd", 0x0A, 0
	o_len equ $-o_msg 
	e_msg db "The number  is even", 0x0A, 0
	e_len equ $-e_msg 

	
SECTION .text
	global _start

_start:
	mov al, byte [var]
	AND al, 0x1
	
	jnz odd

	mov rax, 1
	mov rdi, 1
	mov rsi, e_msg
	mov rdx, e_len
	syscall
	jmp end 
	

end:
	mov rax, 60
	mov rdi, 0
	syscall

odd:
	mov rax, 1
	mov rdi, 1
	mov rsi, o_msg
	mov rdx, o_len
	syscall
	jmp end 
