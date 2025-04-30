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
    mul bl

    add al,48
    mov dl,al
    mov cl,dl

    mov ah,2
    mov dl,13
    int 21h
    mov dl,10
    int 21h

    mov dl,cl
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h
main endp
end main