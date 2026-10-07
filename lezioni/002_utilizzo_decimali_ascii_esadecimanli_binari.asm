org 100h
; Piero Radice
; Esercizio 1: Scrivere un carattere a video usando MOV
mov ah, 02h       ; Funzione DOS per output carattere

mov dl, 'P'       ; Copia il carattere 'P' in DL
int 21h           ; Stampa il contenuto di dl
mov dl, 'i'
int 21h     

mov dl, 0Dh       ; Che carattere è? A che cosa serve?
int 21h           
mov dl, 0Ah       ; Che carattere è? A che cosa serve?
int 21h            

mov dl, 'R'
int 21h
mov dl, 'a'
int 21h

mov dl, 0Dh        
int 21h           
mov dl, 0Ah       
int 21h                                 

; rappresento i caratteri con i decimali
mov dl,  80 
int 21h          
mov dl, 105 
int 21h      

mov dl, 13      
int 21h           
mov dl, 10       
int 21h           
   
mov dl, 82
int 21h
mov dl, 97
int 21h       

mov dl, 13       
int 21h           
mov dl, 10       
int 21h          

; rappresento i caratteri con binario

mov dl, 01010000b 
int 21h          
mov dl, 01101001b 
int 21h      

mov dl, 00001101b      
int 21h           
mov dl, 00001010b       
int 21h           
   
mov dl, 01010010b
int 21h
mov dl, 0110_0001b
int 21h       

mov dl, 0000_1101b       
int 21h           
mov dl, 0000_1010b       
int 21h 

; rappresento i caratteri in esadecimale  

mov dl, 50h      
int 21h          
mov dl, 69h
int 21h     

mov dl, 0Dh     
int 21h           
mov dl, 0Ah      
int 21h            

mov dl, 52h
int 21h
mov dl, 61h
int 21h

mov dl, 0Dh        
int 21h           
mov dl, 0Ah       
int 21h 
ret




