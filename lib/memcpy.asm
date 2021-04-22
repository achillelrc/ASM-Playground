	global memcpyx:function
	section .text

memcpyx:
	xor rax, rax		;return à 0
	test rsi, rsi		;check str2 == NULL
	jz strnull
	mov r8, rdx
memloop:
	cmp r8, 0		;check size == 0
	jz strnull
	dec r8
	mov rcx, [rsi]		;*arg1 = *arg2
	mov [rdi], rcx
	inc rsi
	inc rdi
	jmp memloop
strnull:
	mov byte [rdi], 0
	mov rax, rdi
	ret