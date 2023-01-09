.model small
.stack 50h          
.data
        a dw 4Fh     
        b dw 4Bh     
.code
start:
        mov ax, @data
        mov ds, ax

        mov ax, a
        mov bx, b
    
    mov dl, bl
    mov ah, 02h
    int 21h
        
    push ax         
    push bx     
        mov ax, bx
        mov bx, 0   
    
    mov dl, bl  
    mov ah, 02h
    int 21h
      
        pop bx      
        pop ax      
    
    mov dl, bl
    mov ah, 02h
    int 21h

        mov ax, 4C00h 
        int 21h
end start

