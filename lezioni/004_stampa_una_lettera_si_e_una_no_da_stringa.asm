org 100h

; stampo il primo carattere 'C'
mov dl, [msg]     ; DL = 'C'
mov ah, 02h       ; funzione DOS: stampa un carattere
int 21h

; salto il secondo carattere 'i' e stampo il terzo 'a'
mov dl, [msg+2]   ; DL = 'a'
mov ah, 02h
int 21h

; salto il quarto carattere 'o' e stampo il quinto ' '
mov dl, [msg+4]   ; DL = ' '
mov ah, 02h
int 21h

; salto il sesto carattere 'm' e stampo il settimo 'o'
mov dl, [msg+6]   ; DL = 'o'
mov ah, 02h
int 21h

; salto l'ottavo carattere 'n' e stampo il nono 'd'
mov dl, [msg+8]   ; DL = 'd'
mov ah, 02h
int 21h

; salto il decimo carattere 'o' e stampo l'undicesimo '!'
mov dl, [msg+10]  ; DL = '!'
mov ah, 02h
int 21h

int 20h           ; termina programma
     
     msg db 'Ciao mondo!$', 0   ; stringa da stampare



