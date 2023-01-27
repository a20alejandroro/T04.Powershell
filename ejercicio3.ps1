<#
Introducir una lista de numeros y obtenerlos ordenados
#>


<#
Definimos una lista vacía
#>

$lista = New-Object System.Collections.ArrayList

<#
Programa:
Hago un bucle que en cada iteracción nos pida que introduzcamos un numero, lo añada a la lista y limpie la pantalla.
El bucle se ejecutará mientras cumpla la condición de que el numero introducido sea distinto de 0.
Una vez que salimos del bucle, elimino el 0 de la lista.
Por ultimo muestro la lista ordenada y sin que se repitan los numeros repetidos.
#>

do{
    [double]$numero = Read-Host "Introduce todos los numeros que quieras (introduce el numero 0 cuando quieras parar)"
    $lista.add($numero)
    cls
}while($numero -ne 0)

$lista.remove([double]0)
$lista | Sort-Object {[double]$_} -Unique