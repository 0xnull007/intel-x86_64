SECTION .data

SECTION .text
	global _start

_start:
	mov al, 0x61
	AND al, 0xdf

	mov rax, 0x3C
	mov rdi, 0
	syscall
