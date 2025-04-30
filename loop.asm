.model small
.data
.code
main proc
    mov cl,5
    mov bl,1
    row:
        mov bh,cl
        mov cl,bl
            col:
                mov dl,'*'
                mov ah,2
                int 21h

            loop col
        mov ah,2
        mov dl,13
        int 21h
        mov dl,10
        int 21h

        inc bl
        mov cl,bh
    loop row

main endp
end main