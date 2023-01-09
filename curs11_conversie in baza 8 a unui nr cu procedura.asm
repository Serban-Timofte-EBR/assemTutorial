.model small
.stack 100h
.data 

.code
start:
mov ax,@data
mov ds,ax

mov ax,117
call convert
jmp exit

convert proc
	
	mov BX, 8
                xor dx,dx
                xor cx,cx
    
   impart:
        div  BX            ; ax/8
        push DX
        xor dx,dx
        inc  CX           
        cmp  AL, 0      
        jnz  impart         

   afisez:
        pop  DX
        add  DX, 30h
        mov  AH, 2
        int  21h
        loop afisez
        ret                 
convert endp

exit:
	mov ax,4C00h
	int 21h

end start 