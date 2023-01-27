<#
Programa que tenemos que adivinar un numero.
#>

<#
Indico si el numero introducido es mayor, menor o el correcto del que estamos buscando.
#>

function numero_oculto {
    
    if($numero_aleatorio -gt $numero_adivinar){
        Write-Host "Incorrecto, el numero que estas buscando es mayor que" $numero_adivinar
    }
    elseif($numero_aleatorio -lt $numero_adivinar){
        Write-Host "Incorrecto, el numero que estas buscando es menor que" $numero_adivinar
    }else{
        Write-Host "Enhorabuena, has adivinado el numero oculto" 
    }
}

<#
Programa:
Primero pido dos numeros para establecer un rango.
Una vez obtenido ese rango, con el metodo Get-Random obtengo un numero cualquiera que este dentro de dicho rango.
Posteriormente creo un bucle, en el cual, en cada interación nos pida un numero. Con ese numero y utilizando la función creada anteriormente,
el programa nos dirá lo cerca que estamos de adivinar ese numero indicandonos si es mayor o menor nuestro numero introducido del numero que estamos buscando
hasta que lo adivinemos.
El bucle se seguirá ejecutando mientras cumpla la condición de que el numero que estamos buscando es distinto que el numero introducido.
#>

$numero1 = Read-Host "Introduce un valor inicial para un rango de numeros"
$numero2 = Read-Host "Introduce un valor final mayor que el anterior para un rango de numeros"
$numero_aleatorio = Get-Random($numero1..$numero2)

do{
    $numero_adivinar = Read-Host "Introduce el numero que creas que es"
    $resultado = numero_oculto
}while($numero_adivinar -ne $numero_aleatorio)
