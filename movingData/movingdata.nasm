;  COAL Video Lecture: 33
;  movingdata.nasm
;  Assemble: nasm -felf64 movingdata.nasm
;  Link:     ld movingdata.o -o movingdata
;  usage:    gdb -q ./movingdata -tui

section .data
	var1 db 0xaa, 0xbb, 0xcc, 0xdd, 0xee, 0xff, 0x11, 0x22
	var2 dq 0x1122334455667788
	var3 dw 0xaabb

section .bss
	var4 resq 1

section .text
	global _start
	
_start:
	; Testing movzx instruction (For unsigned Widening)
	; movzx <op64>	<op32>	//can't be used because it will automatically zero out the heigher 32 bits.
	; can't use immediate values as source, bcz their size can't be determined.	
	
	mov al, 0x99
	movzx rdx, al 
	
	; memory --> register
	mov rdi, 0x99999999	
	movzx rdi, byte [var1]

	; register --> memory	// Data type widening is not happening here, bcz here memory means starting address, size can't be fixed. 	
	; mov rax, 0x10
	; movzx byte [var3], al

		
	; Data Type Widening in case of Signed Numbers
	; movsx <dest> <src>		// for general use 
	; movsxd <dest64> <src32>	// only for 64-bit dest and 32-bit src.
	
	; In both cases(signed and unsigned), src can't be memory

	mov al, -1
	movsx rdx, al  

	; Without movzx (Data Type widening)
	mov al, 0x10
	mov rdx, 0
	mov dl, al

	
