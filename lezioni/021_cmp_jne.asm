org 100h ; file .COM 
mov cx, 5 ; contatore: vogliamo stampare 5 volte 
mov ah, 02h ; funzione DOS: stampa un carattere 
mov dl, 'A' 
tornaqui: 
    int 21h ; stampa DL 
    sub cx, 1 ; decrementa contatore 
    cmp cx, 0 ; confronta con 0 
    jne tornaqui ; se CX != 0, ripeti il ciclo 
mov ah, 4Ch ; termina programma 
int 21h