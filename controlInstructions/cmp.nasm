SECTION .data
	var: db 0x04

SECTION .text
	global _start

_start:
	mov al, 0x05
	mov bl, 111110110b	
	;cmp byte [var], 5
	;clc
	add al, bl

	;mov al, 255
	mov al, 5

	cmp al, 6
	cmp al, 4
	cmp al, 7

	mov rax, 60
	mov rdi, 0
	syscall
