.model small
.data
.code
main proc
    mov ah,1
    int 21h
    sub al,48
    mov bl,al

    mov ah,1
    int 21h
    sub al,48
    mov cl,al

    mov al,bl
    mov ah,0
    mov bl,cl
    div bl

    mov cl,ah
    mov dl,al
    add dl,48
    mov ah,2
    int 21h

    mov dl,cl
    add dl,48
    mov ah,2
    int 21h

    mov ah,4ch
    int 21h
main endp
end main