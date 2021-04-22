	global strstrx:function
	section .text

strstrx:
	xor rax, rax		;compteur à 0
	xor r8, r8
	test rdi, rdi		;check str == NULL
	jz strend
	test rsi, rsi		;check str == NULL
	jz strend
	mov r8, rsi
	jmp strloop
preloop:
	mov rdi, rax
	mov rsi, r8
strloop:
	cmp byte [rdi], 0	;check *rdi == 0
	jz strnull
	mov dl, [rdi]
	mov bl, [rsi]
	cmp dl, bl
	jz streq
	inc rdi
	jmp strloop
strend:
	ret
strnull:
	mov rax, 0
	ret
streq:
	mov rax, rdi
straloop:
	inc rdi
	inc rsi
	cmp byte [rsi], 0
	jz strend
	cmp byte [rdi], 0
	jz preloop
	mov dl, [rdi]
	mov bl, [rsi]
	cmp dl, bl
	jnz strloop
	jmp straloop
