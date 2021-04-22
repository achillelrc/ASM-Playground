	global memmovex:function
	section .text

memmovex:
	xor rax, rax		;return à 0
	test rsi, rsi		;check str2 == NULL
	jz strnull
	mov r8, rdx
	mov r9, rsi
memloop:
	cmp r8, 0		;check size == 0
	jz strnull
	dec r8
	mov cl, [r9]		;*arg1 = *arg2
	mov [rdi], cl
	inc rdi
	inc r9
	jmp memloop
strnull:
	mov rax, rdi
	ret