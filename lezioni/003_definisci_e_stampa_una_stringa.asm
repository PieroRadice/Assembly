
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov dx, offset msg     ; carica indirizzo della stringa
mov ah, 09h            ; funzione "stampa stringa"
int 21h

int 20h                ; fine programma

msg db 'Ciao mondo!$', 0





