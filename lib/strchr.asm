	global strchrx:function
	section .text

strchrx:
	xor rax, rax		;compteur à 0
	test rdi, rdi		;check str == NULL
	jz strnull
	cmp rsi, 0		;check c < 0
	jc strnull
strloop:
	cmp [rdi], sil		;check *rdi == c
	jz strend
	cmp byte [rdi], 0	;check *rdi == 0
	jz strnull
	inc rdi;
	jmp strloop;
strend:
	mov rax, rdi
strnull:
	ret