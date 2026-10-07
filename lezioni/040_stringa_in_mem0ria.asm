org 100h

; --- Dati ---
TESTO db 80 dup(?)     ; spazio per 80 caratteri

; --- Inizio programma ---

mov si, offset TESTO    ; SI punta alla variabile TESTO

leggi_carattere:
    mov ah, 1           ; funzione DOS: leggi un carattere da tastiera
    int 21h             ; il carattere finisce in AL

    cmp al, 13          ; 13 = codice ASCII di INVIO (CR)
    je fine_input       ; se è INVIO, vai a fine_input

    mov [si], al        ; salva il carattere nella variabile
    inc si              ; passa al prossimo byte
    jmp leggi_carattere ; ripeti

fine_input:
    mov byte ptr [si], '$' ; termina la stringa con il carattere $

; --- Stampa della stringa ---
mov dx, offset TESTO
mov ah, 9
int 21h

; --- Fine programma ---
mov ah, 4Ch
int 21h
