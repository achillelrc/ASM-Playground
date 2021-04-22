	global strcasecmpx:function
	section .text

strcasecmpx:
	mov r10b, 64
	mov r11b, 90
	xor rax, rax		;return à 0
	test rdi, rdi		;check str == NULL
	jz strnull
	test rsi, rsi		;check str2 == NULL
	jz strnull
strloop:
	mov dl, [rdi]
	cmp r10b, dl		;check *rdi >= 'A'
	jl chkrdi
rdibreak:
	mov bl, [rsi]
	cmp r10b, bl		;check *rsi >= 'A'
	jl chkrsi
rsibreak:
	cmp dl, bl		;check *rdi == *rsi
	jz chkend
	jmp diffend
chkend:				;*rdi == *rsi
	cmp byte [rdi], 0
	mov rax, 0
	jz strnull
	inc rdi
	inc rsi
	jmp strloop
diffend:
	movzx r8, dl
	movzx r9, bl
	sub r8, r9		;return = *rdi - *rsi
	mov rax, r8
strnull:
	ret
chkrdi:
	mov r8b, dl
	add r8b, 32
	cmp r11b, dl		;check *rdi > 'Z'
	jl rdibreak
	mov dl, r8b		;*rdi+32
	jmp rdibreak
chkrsi:
	mov r8b, bl
	add r8b, 32
	cmp r11b, bl		;check *rsi > 'Z'
	jl rsibreak
	mov bl, r8b		;*rsi+32
	jmp rsibreak