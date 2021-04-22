	global strcmpx:function
	section .text

strcmpx:
	mov rax, 1		;return à 1
	test rdi, rdi		;check str == NULL
	jz strnull
	test rsi, rsi		;check str2 == NULL
	jz strnull
strloop:
	mov dl, [rdi]
	mov bl, [rsi]
	cmp dl, bl		;check *rdi == *rsi
	jz chkend
	jmp diffend
chkend:				;*rdi == *rsi
	cmp byte [rdi], 0
	xor rax, rax		;success
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