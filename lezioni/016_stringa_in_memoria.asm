org 100h          ; programma .COM

; --- Inserimento dei caratteri da tastiera ---
mov ah, 1          ; funzione DOS: leggi un carattere da tastiera

int 21h            ; leggi 1° carattere
mov [300h], al

int 21h            ; leggi 2° carattere
mov [301h], al

int 21h            ; leggi 3° carattere
mov [302h], al

int 21h            ; leggi 4° carattere
mov [303h], al

mov [304h], '$'    ; fine della stringa

; --- Stampa della stringa ---
mov dx, 300h       ; indirizzo di partenza della stringa
mov ah, 9          ; funzione DOS: stampa stringa terminata da $
int 21h

mov ah, 4Ch        ; termina il programma
int 21h
