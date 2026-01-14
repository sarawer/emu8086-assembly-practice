;The Format of a Code
.MODEL SMALL
.STACK 100h
.DATA

.CODE
MAIN PROC

MOV AH,4CH  
INT 21H 


MAIN ENDP
END MAIN

;display anything

LEA DX,MSG
    MOV AH,9
    INT 21H

;display single char
mov dl, x
mov ah, 2
int 21h 

;Take Input one char
mov ah, 1
int 21h
mov ch, al

;convert char to int while input
mov ah, 1
int 21h       ; AL = input character
sub al, 30h   ; convert ASCII → integer
mov bl, al    ; BL now contains intege


;multiline msg
msg1 db 0DH,0AH, 'input num1:$' 

;lowercase to upper

MOV AH,1
    INT 21H
    SUB AL,20H
    MOV CHAR,AL


