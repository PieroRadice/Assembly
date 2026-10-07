; stesso codice di sopra, ma usa SUB
sub bl, al        ; BL = primo - secondo
add bl, 30h
mov dl, bl
mov ah, 02h
int 21h



