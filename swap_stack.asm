.model small
.stack 100h
.data
    a db 5
    b db 6
.code
main proc
    mov ax,@data
    mov ds,ax

    mov al,a
    push ax

    mov al,b
    push ax

    pop ax
    mov a, al
    
    pop ax
    mov b, al

    mov dl, a
    add dl, 48
    mov ah, 2
    int 21h

    mov dl, b
    add dl, 48
    mov ah, 2
    int 21h

    mov ah, 4Ch
    int 21h
main endp
end main