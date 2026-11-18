# U3-PRACTICAS..
PROCEDIMIENTO MODULIZAR: Muestra el uso básico de procedimientos (subrutinas) en ensamblador utilizando las instrucciones CALL y RET, llamando a un mismo procedimiento (MensajeAviso)
Qué se comprobó al ejecutarlo: Se verifica que el flujo de control del procesador salta correctamente a la subrutina, ejecuta su contenido y regresa de forma precisa a la línea siguiente del programa principal donde fue llamado, manteniendo la ejecución ordenada.
MACROS: Ilustra la definición y el uso de macros personalizadas con parámetros (MostrarMensaje y CalcularImporte) para automatizar tareas repetitivas de impresión de texto y operaciones aritméticas de multiplicación.

Qué se comprobó al ejecutarlo: Se comprueba que el preprocesador expande las macros correctamente en tiempo de compilación y que la multiplicación de las variables precio por cantidad (50 * 3 = 150) se efectúa de manera exacta, mostrando el resultado numérico en pantalla.
PROCEDIMIENTOS ANIDADOS: Ejemplifica el comportamiento de procedimientos anidados, donde el procedimiento principal llama a MensajeAviso, y este último a su vez realiza otra llamada interna a un segundo procedimiento llamado MensajeAviso2.

Qué se comprobó al ejecutarlo: Se verifica el correcto funcionamiento del manejo de la pila (stack) mediante las instrucciones de retorno (RET) anidadas, asegurando que la ejecución regrese paso a paso desde el nivel más interno hasta el procedimiento principal sin errores de desbordamiento.
VALIDAR CADENA: Lee una cadena de texto introducida por el usuario a través de la consola con ReadString y evalúa su longitud (almacenada en el registro EAX) mediante una comparación condicional (cmp y jle) para determinar si se ingresó texto o está vacía.

Qué se comprobó al ejecutarlo: Se comprueba la lógica de bifurcación condicional (if-else en ensamblador), validando que el programa decida correctamente qué mensaje imprimir (LA CADENA SI EXISTE o NO EXISTE LA CADENA) basándose en la cantidad de caracteres leídos.
