;***************************************************************************
;
; Program for education in subject "Assembly Languages" and "APPS"
; petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
;
; Empty project
;
;***************************************************************************

    bits 64

    section .data
    extern mocnina

    
    extern array_length;
    extern pole1
    extern pole2
    extern result_pole

g_i dd 0
result dd 0

pole_i dd 0
    

;***************************************************************************

    section .text
    global is_devidable
    global count_pole
is_devidable:
    cmp dword[g_i], 32 ;g_i = 0
    jg .calc_result
    ; Jede se d8le, tohle se skipne
    mov eax, [mocnina] ; int eax = mocnina; 
    and eax, 1 ; 0101
            ;AND 0001
    cmp eax, 1
    je .increment
    jne .do
.do:
    shr dword[mocnina], 1 ;0101 >> 1  = 0010   int mocnina = mocnina >> 1
    inc dword[g_i] ; (i++ ve for loopu)
    jmp is_devidable ; Vyvolam znovu
.increment:
    inc dword[result] ; result ++
    jmp .do

.calc_result:
    cmp dword[result], 1
    je .is
    jne .is_not
.is_not:
    mov al, 0
    jmp .return
.is:
    mov al, 1
    jmp .return
.return:
    ret
    ;ret

count_pole:
    mov eax, dword[pole_i]
    cmp eax, [array_length]
    je .return

    mov ecx, dword [pole_i]
    mov edx, dword[pole1 + ecx *4]
    mov ebx, dword [pole2 + ecx *4]
    add edx, ebx
    mov dword [result_pole + ecx *4], edx

    inc dword [pole_i]
    jmp count_pole
.return: 
    ret
