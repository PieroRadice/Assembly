org 100h          ; file .COM

MOV AX, 0B800h     ; set AX to hexadecimal value of B800h. 
MOV DS, AX         ; copy value of AX to DS. 
MOV AL, 'P'        ; set CL to ASCII code of 'A', it is 41h. 
MOV AH, 1101_1111b ; set CH to binary value. 
MOV BX, 15Eh       ; set BX to 15Eh. 
MOV [BX], AX       ; copy contents of CX to memory at B800:015E   

mov cx, 5         ; contatore: vogliamo stampare 5 volte  
loop_start:
add bx,2
 MOV [BX], CX       ; copy contents of CX to memory at B800:
 loop loop_start   ; decrementa CX e ripeti se CX != 0

 mov ah, 4Ch       ; termina programma
 int 21h
