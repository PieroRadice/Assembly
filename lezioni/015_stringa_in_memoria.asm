org 100h        ; programma .COM inizia da 0100h

; --- Mettiamo i caratteri in memoria ---
mov [300h], 'C'
mov [301h], 'I'
mov [302h], 'A'
mov [303h], 'O'
mov [304h], '$'    ; il carattere $ serve per dire a DOS dove finisce la stringa

; --- Stampa la stringa ---
mov dx, 300h       ; indirizzo di partenza della stringa
mov ah, 09h        ; funzione DOS: stampa stringa terminata da $
int 21h            ; stampa

mov ah, 4Ch        ; termina il programma
int 21h
