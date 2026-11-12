.386
.model flat, c
option casemap:none

includelib msvcrt.lib
includelib legacy_stdio_definitions.lib

printf PROTO :VARARG
scanf PROTO :VARARG

.data
    prompt db "숫자를 입력하세요: ", 0
    fmt_in db "%d", 0
    fmt_out db "평균: %d", 10, 0
    num dd 0

.code
main PROC
    mov esi, 0
    mov edi, 0

InputLoop:
    cmp edi, 5
    jge Calculate

    INVOKE printf, ADDR prompt
    INVOKE scanf, ADDR fmt_in, ADDR num

    mov eax, num
    add esi, eax

    inc edi
    jmp InputLoop

Calculate:
    mov eax, esi
    cdq
    mov ecx, 5
    idiv ecx

    INVOKE printf, ADDR fmt_out, eax

    ret
main ENDP
END
