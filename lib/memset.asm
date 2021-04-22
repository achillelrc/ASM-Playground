	global memsetx:function
	section .text

memsetx:
	xor rax, rax		;return à 0
	jmp memloop
memloop:
	cmp rdx, 0
	jz strnull
	dec rdx
	mov [rdi], sil
	inc rdi
	jmp memloop
strnull:
	mov rax, rdx
	ret