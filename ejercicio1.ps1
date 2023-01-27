
<#
Programa que indique si un numero es primo o no
#>

<#
Para calcular si el numero es primo o no, le indico en la funcion que si el numero introducido al ser divido entre dos, si el resto 
que nos da es igual a 0 significará que no es un numero primo, en caso contrario, significará que si es un numero primo.
#>

function numero_primo {
    if($numero % 2 -eq 0){
        Write-Host "El numero" $numero "no es un numero primo."
    }
    else{
        Write-Host "El numero" $numero "es un numero primo."
    }
}

<#
Programa:
Hago un bucle en el cual pido que el usuario introduzca un numero y luego indicando la funcion anterior nos dira si el numero es primo o no.
El bucle se ejecutará mientras cumpla la condición de que, si el usuario introduce el numero "1", se seguirá ejecutando.
#>

do{
    $numero = Read-Host "Introduce un numero"
    $resultado = numero_primo
    $salir = Read-Host "Quieres salir del programa?(0 para salir, 1 para continuar)"
}while($salir -eq 1)


