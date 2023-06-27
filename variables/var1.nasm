; This is a comment. .data section contains initialized data
; Here is the general format to declare a variable

; <var_name> <define_datatype> <initial_value> 

SECTION .data

	name db "Abdul Qadir", 0xA  ; ASCII value of newline character = 10 or 0xA
	len equ $-name		    ; $ represents the starting address of current variable, so len will contain the length of the string name
 
	age db 12.3
	var1 dw 500
	var2 dd 1234.12354
	var3 dq 0x1122334455667788
	var4 db 0x10, 0x20, 0x30, 0x40
	emptybuf times 64 db 0		; Here "db 0" will be executed 64 times.
	var5 db 0x99 
	
; .bss section contains uninitialized variables

SECTION .bss 
;Nothing here

SECTION .text
	global _start		; Making _start global, so that it can be called/linked from external file

_start:

	; for testing x/gx command by pasing any register containing any memory address.
	
	mov rax, var5	; now rax contains address of var5

	; int write (int fd, const void *buf, size_t count)			

	mov rax, 1	; write syscall number
	mov rdi, 1	; file descriptor
	mov rsi, name	; buffer address
	mov rdx, len	; number of bytes to be written
	syscall

	mov rcx, age
	mov rdi, 0
	mov edi, 0x3344
	mov rcx, [var4+1]

	mov rax, 60	; exit syscall number	
	mov rdi, 0
	syscall
	

