	.file	"helloworld2.c"
	.intel_syntax noprefix
	.section	.rodata
.LC0:
	.string	"%s %s\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	rax, QWORD PTR fs:40 # Gets a stack canary
	mov	QWORD PTR [rbp-8], rax # Stores the canary on the stack
	xor	eax, eax
	mov	DWORD PTR [rbp-48], 1819043144 # ASCII: lleH
	mov	WORD PTR [rbp-44], 111 # ASCII: o
	movabs	rax, 7956017151892415858 # ASCII: nisrever
	mov	QWORD PTR [rbp-32], rax
	mov	WORD PTR [rbp-24], 8551 # ASCII: !g
	mov	BYTE PTR [rbp-22], 0 # NULL byte
	lea	rdx, [rbp-32] # rdx = pointer to string "reversing!"
	lea	rax, [rbp-48] # rax = pointer to string "Hello"
	mov	rsi, rax      # rsi = pointer to string "Hello"
	mov	edi, OFFSET FLAT:.LC0 # edi = pointer to string "%s %s\n"
	mov	eax, 0
	call	printf
	mov	eax, 0
	mov	rcx, QWORD PTR [rbp-8]
	xor	rcx, QWORD PTR fs:40
	je	.L3
	call	__stack_chk_fail
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.9.2-10ubuntu13) 4.9.2"
	.section	.note.GNU-stack,"",@progbits
