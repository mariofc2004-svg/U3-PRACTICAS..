INCLUDE Irvine32.inc        

.data                       ; Segmento de datos
    msg_Bienvenida    BYTE "INICIO DE PROGRAMA ", 0 ; Mensaje inicial
	msg_Cad BYTE "ESCRIBE UNA CADENA (TEXTO) : ",0    ; Mensaje pidiendo texto al usuario
	msg_Inv BYTE "NO EXISTE LA CADENA ", 0          ; Mensaje si la cadena está vacía o es inválida
	mag_Val BYTE "LA CADENA SI EXISTE  ", 0         ; Mensaje si la cadena es válida
	palabra BYTE 20 DUP(0)                          ; Reserva un arreglo de 20 bytes inicializados en 0 para la palabra
	msg_Fin    BYTE "ACABO EL PROGRAMA ",0          ; Mensaje final
 
.code                       
main PROC                   
	mov edx , OFFSET msg_Bienvenida ; Carga la dirección del mensaje de bienvenida
	call WriteString                ; Imprime el mensaje de bienvenida
	call Crlf                       ; Salto de línea

	mov edx , OFFSET msg_Cad        ; Carga la dirección del mensaje que pide la cadena
	call WriteString                ; Imprime el mensaje pidiendo la cadena
	call Crlf                       ; Salto de línea

	mov edx,OFFSET palabra          ; Apunta EDX al espacio reservado 'palabra' para almacenar la entrada
	mov ecx, SIZEOF palabra         ; Establece el tamaño máximo de caracteres a leer (20 bytes)

	call ReadString                 ; Lee la cadena ingresada por el usuario (la longitud leída se guarda en EAX)
	call Crlf                       ; Salto de línea

	call ValidarCad                 ; Llama al procedimiento para validar la cadena leída

	mov edx , OFFSET msg_Fin        ; Carga la dirección del mensaje de fin
	call WriteString                ; Imprime el mensaje de fin
	call Crlf                       ; Salto de línea
	
   exit                           

   main ENDP                       

   ValidarCad PROC                  ; Definición del procedimiento de validación
	cmp eax, 0                      ; Compara el valor de EAX (longitud de la cadena ingresada) con 0
	jle invalido                    ; Si es menor o igual a 0, salta a la etiqueta 'invalido'
	mov edx, OFFSET mag_Val         ; Si es mayor a 0, prepara el mensaje de cadena válida
	jmp mostrar                     ; Salta directamente a la sección de mostrar
invalido:                           ; Etiqueta en caso de que la cadena no sea válida
	mov edx, OFFSET msg_Inv         ; Prepara el mensaje de cadena inválida/no existente
mostrar:                            ; Etiqueta común para imprimir el resultado
	call WriteString                ; Imprime el mensaje seleccionado en EDX
	call Crlf                       ; Salto de línea
	ret                             ; Retorna al procedimiento principal
   ValidarCad   ENDP                

END main                            