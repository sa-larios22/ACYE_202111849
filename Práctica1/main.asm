.model medium
.stack
.data
    menuPrin1 db "+-------------------------+", 0Dh, 0Ah, "$"
    menuPrin2 db "| MENU PRINCIPAL          |", 0Dh, 0Ah, "$"
    menuPrin3 db "+-------------------------+", 0Dh, 0Ah, "$"
    menuPrin4 db "| 1. Nuevo Juego          |", 0Dh, 0Ah, "$"
    menuPrin5 db "| 2. Animacion            |", 0Dh, 0Ah, "$"
    menuPrin6 db "| 3. Informacion          |", 0Dh, 0Ah, "$"
    menuPrin7 db "| 4. Salir                |", 0Dh, 0Ah, "$"
    menuPrin8 db "+-------------------------+", 0Dh, 0Ah, "$"
    menuPrin9 db "Seleccione una opcion: ", 0Dh, 0Ah, "$"
    user_input db ?
.code
main PROC
    ; Imprimir el menú
    MOV AX, SEG menuPrin1
    MOV DS, AX
    MOV AH,09H
    LEA DX,menuPrin1
    INT 21H
    LEA DX,menuPrin2
    INT 21H
    LEA DX,menuPrin3
    INT 21H
    LEA DX,menuPrin4
    INT 21H
    LEA DX,menuPrin5
    INT 21H
    LEA DX,menuPrin6
    INT 21H
    LEA DX,menuPrin7
    INT 21H
    LEA DX,menuPrin8
    INT 21H
    LEA DX,menuPrin9
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