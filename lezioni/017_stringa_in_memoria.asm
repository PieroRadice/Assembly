org 100h

; --- Dati ---
TESTO db 5 dup(?)   ; variabile che conterrà 4 caratteri + '$'

; --- Inizio programma ---

mov si, offset TESTO  ; SI = indirizzo della variabile

; --- Lettura dei 4 caratteri ---
mov ah, 1
int 21h
mov [si], al          ; salva 1° carattere
inc si

int 21h
mov [si], al          ; salva 2° carattere
inc si

int 21h
mov [si], al          ; salva 3° carattere
inc si

int 21h
mov [si], al          ; salva 4° carattere
inc si

mov byte ptr [si], '$' ; terminatore della stringa

; --- Stampa della stringa ---
mov dx, offset TESTO
mov ah, 9
int 21h

; --- Fine programma ---
mov ah, 4Ch
int 21h
