	global strcspnx:function
	section .text

strcspnx:
	xor rax, rax		;compteur à 0
	xor r8, r8
	test rdi, rdi		;check str == NULL
	jz strend
	test rsi, rsi		;check str == NULL
	jz strend
strloop:
	cmp byte [rdi], 0	;check *rdi == 0
	jz strend
	mov dl, [rdi]
	mov bl, [rsi]
	cmp dl, bl
	jnz strnoteq
strend:
	ret
strnoteq:
	inc rsi
	inc r8
	cmp byte [rsi], 0
	jnz strloop
	sub rsi, r8
	mov r8, 0
	inc rax
	inc rdi
	jmp strloop