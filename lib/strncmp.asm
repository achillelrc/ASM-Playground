	global strncmpx:function
	section .text

strncmpx:
	xor rax, rax		;return à 0
	test rdi, rdi		;check str == NULL
	jz strnull
	test rsi, rsi		;check str2 == NULL
	jz strnull
	cmp rdx, 0		;check c < 0
	jc strnull
	jz strnull
	mov r8, rdx
strloop:
	dec r8
	mov dl, [rdi]
	mov bl, [rsi]
	cmp dl, bl		;check *rdi == *rsi
	jz chkend
	jmp diffend
chkend:				;*rdi == *rsi
	cmp byte [rdi], 0
	jz strnull
	cmp r8, 0
	jz strnull
	inc rdi
	inc rsi
	jmp strloop
diffend:			;*rdi != *rsi
	cmp dl, bl
	mov rax, -1
	jl strnull		;*rdi < *rsi
	mov rax, 1		;*rdi > *rsi
strnull:
	ret