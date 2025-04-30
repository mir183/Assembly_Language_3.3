.model small
.data
    arr db 1, 2, 3, 4, 5, 6, 7, 8, 9
.code
main proc
    mov ax,@data
    mov ds,ax
    mov cx,9
    lea si,arr

    PrintLOOP:
        mov dl,[si]
        add dl,48
        mov ah,2
        int 21h

        inc si
        loop PrintLOOP
main endp
end main