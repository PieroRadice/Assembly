
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 
MOV AX, 0B800h     ; set AX to hexadecimal value of B800h. 
MOV DS, AX         ; copy value of AX to DS. 
MOV CL, 'P'        ; set CL to ASCII code of 'A', it is 41h. 
MOV CH, 1101_1111b ; set CH to binary value. 
MOV BX, 15Eh       ; set BX to 15Eh. 
MOV [BX], CX       ; copy contents of CX to memory at B800:015E   
         ; copy value of AX to DS. 
MOV CL, 'i'        ; set CL to ASCII code of 'A', it is 41h. 
MOV CH, 1101_1110b ; set CH to binary value.  
MOV [BX+2], CX       ; copy contents of CX to memory at B800:015E 

MOV CL, 'e'        ; set CL to ASCII code of 'A', it is 41h. 
MOV CH, 1101_1110b ; set CH to binary value.  
MOV [BX+4], CX       ; copy contents of CX to memory at B800:015E 

MOV CL, 'r'        ; set CL to ASCII code of 'A', it is 41h. 
MOV CH, 1101_1000b ; set CH to binary value.  
MOV [BX+6], CX       ; copy contents of CX to memory at B800:015E 

MOV CL, 'o'
MOV CH, 1101_1111b
MOV [BX+8], CX

ret


