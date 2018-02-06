;Imprime as letras de A até Z
BITS 16
inicio:
	mov ah,0x0e
	mov al,'A'
	int 0x10
	jmp imprime
imprime:
	add al,1
	int 0x10
	cmp al,'Z'
	jz fim
	jmp imprime
fim:
	times 510-($-$$) db 0
	dw 0xaa55
