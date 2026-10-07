org 100h          ; file .COM

mov cx, 5         ; contatore: vogliamo stampare 5 volte

 mov ah, 02h       ; funzione DOS: stampa un carattere
 mov dl, 'A'        ; DL = 'A'  
loop_start:
 int 21h           ; stampa DL
 loop loop_start   ; decrementa CX e ripeti se CX != 0

 mov ah, 4Ch       ; termina programma
 int 21h
