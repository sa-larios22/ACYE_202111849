.model small
.stack
.data
    msg1 db "A", "$"
    msg2 db "B", "$"
    msg3 db "C", "$"
    user_input db ?

    menuPrin1 db "+-------------------------+"
    menuPrin2 db "| Menú Principal          |"
    menuPrin3 db "+-------------------------+"
    menuPrin4 db "| 1. Nuevo Juego          |"
    menuPrin5 db "| 2. Animación            |"
    menuPrin6 db "| 3. Información          |"
    menuPrin7 db "| 4. Salir                |"
    menuPrin8 db "+-------------------------+"
.code
main PROC
    ; Imprimir el primer mensaje
    MOV AX, SEG msg1
    MOV DS, AX
    MOV AH,09H
    LEA DX,msg1
    INT 21H
    ; Imprimir un salto de línea
    MOV AH, 02H
    MOV DL, 0AH ; código ASCII para LF
    INT 21H
    MOV DL, 0DH ; código ASCII para CR
    INT 21H

    ; Imprimir el segundo mensaje
    MOV AX, SEG msg2
    MOV DS, AX
    MOV AH,09H
    LEA DX,msg2
    INT 21H
    ; Imprimir un salto de línea
    MOV AH, 02H
    MOV DL, 0AH ; código ASCII para LF
    INT 21H
    MOV DL, 0DH ; código ASCII para CR
    INT 21H

    ; Imprimir el tercer mensaje
    MOV AX, SEG msg3
    MOV DS, AX
    MOV AH,09H
    LEA DX,msg3
    INT 21H
    ; Imprimir un salto de línea
    MOV AH, 02H
    MOV DL, 0AH ; código ASCII para LF
    INT 21H
    MOV DL, 0DH ; código ASCII para CR
    INT 21H

    ; Leer un carácter del usuario
    MOV AH, 01H
    INT 21H
    MOV user_input, AL

    ; Imprimir el carácter del usuario
    MOV AH, 02H
    MOV DL, user_input
    INT 21H

    .exit
main ENDP
END