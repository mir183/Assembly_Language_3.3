.model small
.data
    var1 db "Hello ",13,10,"World!$"
.code
main proc
    mov ax,@data
    mov ds,ax

    mov ah,9
    lea dx,var1
    int 21h

    mov ah,4ch
    int 21h
main endp
end main