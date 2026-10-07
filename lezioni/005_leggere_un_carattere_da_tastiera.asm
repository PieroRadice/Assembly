
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ah, 01h    ; funzione: leggi carattere
int 21h
mov bl, al     ; salva carattere in BL

mov ah, 02h    ; funzione: scrivi carattere
mov dl, bl     ; carica carattere da stampare
int 21h

int 20h





