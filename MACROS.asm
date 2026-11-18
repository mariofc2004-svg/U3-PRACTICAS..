INCLUDE Irvine32.inc        

MostrarMensaje MACRO texto  
mov edx, OFFSET texto       ; Carga la dirección del texto recibido en EDX
call WriteString            ; Imprime la cadena en pantalla
call Crlf                   ; Salto de línea
ENDM                        ; Fin de la macro

CalcularImporte MACRO precio, cantidad ; Define una macro para calcular el importe multiplicando precio por cantidad
mov eax, precio             ; Mueve el valor de 'precio' al registro EAX
imul eax, cantidad          ; Multiplica EAX por 'cantidad' (resultado queda en EAX)
ENDM                        

.data                       
MensajeBienvenida BYTE "Que pasa calabaza", 0 ; Mensaje inicial
MensajeFin BYTE "Me piro vampiro ", 0       ; Mensaje final
precio DWORD 50             ; Variable de tipo DWORD con valor 50
cantidad DWORD 3            ; Variable de tipo DWORD con valor 3
importe DWORD ?             ; Variable de tipo DWORD sin inicializar para guardar el resultado

.code                       
main PROC                   ; Procedimiento principal
MostrarMensaje MensajeBienvenida ; Llama a la macro para mostrar el mensaje de bienvenida

CalcularImporte precio, cantidad ; Llama a la macro para multiplicar precio por cantidad
mov importe, eax            ; Guarda el resultado de la multiplicación (en EAX) en la variable 'importe'

call WriteInt               ; Imprime el valor entero almacenado en EAX en la consola
call Crlf                   ; Salto de línea

MostrarMensaje MensajeFin   ; Llama a la macro para mostrar el mensaje de despedida

exit                        
main ENDP                   
END main                    