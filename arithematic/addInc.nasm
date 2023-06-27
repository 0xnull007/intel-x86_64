SECTION .data
	var1: db 0x11
	var2: dw 0x2233
	var3: dd 0x44556677
	var4: dq 0x9988776655443322

	var5: db 0x7F	; 127, max value that can be stored in signed one byte

	a: db 0x5
	b: db 0x6

SECTION .text
	global _start

_start:
	mov al, 0x5
	sub al, 0x7	
	
	movzx rax, byte [var1]
	add rax, [var4]

	movzx rax, byte [var1]
	add byte [var1], al 

	inc al
	inc byte [var1]	
	
	; 0x7F = 127 		; overflowing var5
	inc byte [var5]		; this will result in -128	
	
	mov rax, 60
	mov rdi, 50
	syscall
