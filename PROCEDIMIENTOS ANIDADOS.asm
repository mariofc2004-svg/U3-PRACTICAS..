INCLUDE Irvine32.inc        

.data                       
    msg_Bienvenida   BYTE "INICIO DE PROGRAMA ", 0  ; Mensaje inicial
	msg_Proc   BYTE "ESTOY EN EL PROCEDIMIENTOOOOOOOOOO AJAJ XD ",0  ; Mensaje del primer procedimiento
	msg_Proc2   BYTE "ESTOY EN EL  OTRO PROCEDIMIENTOOOOOOOOOO AJAJ XD ",0 ; Mensaje del segundo procedimiento
	msg_Fin   BYTE "ACABO EL PROGRAMA ",0           ; Mensaje final

.code                       
main PROC                   
	mov edx , OFFSET msg_Bienvenida ; Prepara la dirección del mensaje de bienvenida
	call WriteString                ; Imprime el mensaje de bienvenida
	call Crlf                       ; Salto de línea

	;primera llamada
	call MensajeAviso               ; Llama al primer procedimiento

	mov eax,10                      ; Asigna 10 a EAX

	mov eax,20                      ; Asigna 20 a EAX (sobrescribe el 10 anterior)

	mov edx , OFFSET msg_Fin        ; Prepara la dirección del mensaje de fin
	call WriteString                ; Imprime el mensaje de fin
	call Crlf                       ; Salto de línea

   exit                             

   main ENDP                        ; Fin del procedimiento principal

   MensajeAviso PROC                ; Definición del primer procedimiento
	mov edx , OFFSET msg_Proc       ; Prepara el mensaje del primer procedimiento
	call WriteString                ; Imprime el mensaje
	call Crlf                       ; Salto de línea

	call MensajeAviso2              ; Llamada anidada: desde aquí se llama a un segundo procedimiento
	
	ret                             ; Retorna al procedimiento principal (main)

   MensajeAviso ENDP                

   MensajeAviso2 PROC               ; Definición del segundo procedimiento (anidado)
	mov edx , OFFSET msg_Proc2      ; Prepara el mensaje del segundo procedimiento
	call WriteString                ; Imprime el mensaje
	call Crlf                       ; Salto de línea
	ret                             ; Retorna a donde fue llamado (a 'MensajeAviso')

   MensajeAviso2 ENDP               

END main                            