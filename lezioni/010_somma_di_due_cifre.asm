
org 100h

; Legge primo numero
mov ah, 01h
int 21h
sub al, 30h
mov bl, al

; Legge secondo numero
mov ah, 01h
int 21h
sub al, 30h

; Somma
add al, bl        ; AL = primo + secondo

; Conversione da numero a ASCII per stampare
add al, 30h

; Stampa risultato
mov dl, al
mov ah, 02h
int 21h

int 20h




