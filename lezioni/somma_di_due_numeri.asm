org 100h       ; punto di partenza per i .com

num1 db 5      ; dato 1
num2 db 10     ; dato 2
result db ?    ; spazio per il risultato

start:
    mov al, num1    ; carica num1 in AL
    add al, num2    ; somma num2
    mov result, al  ; salva il risultato

    mov ah, 4Ch     ; termina il programma
    int 21h





