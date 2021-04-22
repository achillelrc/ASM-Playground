	global strlenx:function
	section .text

strlenx:
	xor rax, rax		;compteur à 0
	test rdi, rdi		;check str == NULL
	jz strlend
strloop:
	cmp byte [rdi], 0	;check *rdi == 0
	jz strlend
	inc rdi;
	inc rax;
	jmp strloop;
strlend:
	ret