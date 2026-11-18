INCLUDE Irvine32.inc        

.data                      
    msg_Bienvenida   BYTE "INICIO DE PROGRAMA ", 0  ; Mensaje de bienvenida terminado en nulo (0)
	msg_Proc   BYTE "ESTOY EN EL PROCEDIMIENTOOOOOOOOOO AJAJ XD ",0 ; Mensaje dentro del procedimiento
	msg_Fin   BYTE "ACABO EL PROGRAMA ",0           ; Mensaje de fin de programa

.code                       
main PROC                   
	mov edx , OFFSET msg_Bienvenida ; Carga la dirección de memoria del mensaje de bienvenida en EDX
	call WriteString                ; Imprime en pantalla la cadena apuntada por EDX
	call Crlf                       ; Realiza un salto de línea (Carriage Return / Line Feed)

	;primera llamada
	call MensajeAviso               ; Salta y ejecuta el procedimiento 'MensajeAviso'

	mov eax,10                      ; Mueve el valor 10 al registro EAX

	;segunda llamada
	call MensajeAviso               ; Vuelve a llamar al procedimiento 'MensajeAviso'

	mov eax,20                      ; Mueve el valor 20 al registro EAX

	mov edx , OFFSET msg_Fin        ; Carga la dirección del mensaje de fin en EDX
	call WriteString                ; Imprime el mensaje de fin en pantalla
	call Crlf                       ; Realiza un salto de línea

   exit                            

   main ENDP                        ; Fin del procedimiento principal

   MensajeAviso PROC                ; Definición del procedimiento 'MensajeAviso'

	mov edx , OFFSET msg_Proc       ; Carga la dirección del mensaje del procedimiento en EDX
	call WriteString                ; Imprime el mensaje del procedimiento en pantalla
	call Crlf                       ; Salto de línea
	ret                             ; Retorna la ejecución a la línea siguiente de donde fue llamado 

   MensajeAviso ENDP                
END main                            