	global strpbrkx:function
	section .text

strpbrkx:
	xor rax, rax		;compteur à 0
	test rdi, rdi		;check str == NULL
	jz strnull
	test rsi, rsi		;check str == NULL
	jz strnull
strloop:
	mov dl, [rdi]
	mov bl, [rsi]
	cmp dl, bl
	jz strend
	cmp byte [rdi], 0	;check *rdi == 0
	jz straloop
	inc rdi
	inc rax
	jmp strloop;
strend:
	mov rax, rdi
strnull:
	ret
straloop:
	sub rdi, rax
	inc rsi
	cmp byte [rsi], 0
	mov rax, 0
	jz strnull
	jmp strloop