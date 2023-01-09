.model small
.stack 50h          
.data
	e db "p"
	o db "i"
.code
start:
        mov ax, @data
        mov ds, ax

        mov ax, 23	 	
	  mov BX, 2
    
    impart:
    	div BX
    	push DX
	push AX

    afisez:
	xor BX,BX
	pop CX
	pop BX

	cmp bx, 0
	je istrue

	cmp bx, 0
	jne isfalse
	 
    istrue:
	mov dx, OFFSET e
	mov ah, 02h
	int 21h
	mov dx, cx
	mov ah, 02h
	int 21h
	jmp lastpart
    
    isfalse:
	mov dx, OFFSET o
	mov ah, 02h
	int 21h
	mov dx, cx
	mov ah, 02h
	int 21h
	jmp lastpart

lastpart:
  mov ax, 4C00h 
  int 21h
end start

