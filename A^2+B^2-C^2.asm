.MODEL SMALL 
.STACK 100H
.DATA  
MSG1 DB 0DH,0AH, 'ENTER A: $' 
MSG2 DB 0DH,0AH, 'ENTER B: $'
MSG4 DB 0DH,0AH, 'ENTER C: $'
MSG3 DB 0DH,0AH, 'A^2+B^2-C^2=$'  
NUM1 DB ?
NUM2 DB ? 
NUM3 DB ?
SUM DB ?   
RESULT DB ?

.CODE
MAIN PROC
    MOV AX,@DATA   ;
    MOV DS,AX
    
    LEA DX,MSG1
    MOV AH,9
    INT 21H
         
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM1,AL
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
         
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM2,AL
    
    LEA DX,MSG4
    MOV AH,9
    INT 21H
         
    MOV AH,1
    INT 21H
    SUB AL,30H
    MOV NUM3,AL
    
    ;(A^2+B^2-C^2)
    MOV AL,NUM1 
    MUL AL
    MOV BL,AL
    
    MOV AL,NUM2
    MUL AL
    MOV CL,AL
    
    MOV AL,NUM3
    MUL AL
    MOV DL,AL
    
    MOV AL,BL
    ADD AL,CL
    SUB AL,DL
    
    MOV RESULT,AL
    
    
    LEA DX,MSG3
    MOV AH,9
    INT 21H 
    ADD RESULT,30H
    MOV DL,RESULT  
    
    
    
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
    
    

MAIN ENDP
END MAIN
