.model small
.data
.code
main proc
    mov ah,1
    int 21h
    ; sub al,48
    mov bl,al 

    mov ah,1
    int 21h
    ; sub al,48

    cmp bl,al
    jl THE_BL_IS_LESS_THAN_AL
    mov dl,al
    ; add dl,48
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h

THE_BL_IS_LESS_THAN_AL:
    mov dl,bl
    ; add dl,48
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h
main endp
end main