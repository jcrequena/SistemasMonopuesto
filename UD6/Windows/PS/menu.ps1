function mostrarMenu 
{ 
     cls 
     Write-Host "===============Menu Principal================" 
      
     Write-Host "1) Opcion 1" 
     Write-Host "2) Opcion 2" 
     Write-Host "3) Opcion 3" 
     Write-Host "S) Pulsa la tecla 'S' para salir" 
}


do 
{ 
     mostrarMenu 
     $input = Read-Host "Selecciona una opcion del menu:"
     switch ($input) 
     { 
           '1' { 
                cls 
                'Has pulsado la opcion 1' 
           } '2' { 
                cls 
                'Has pulsado la opcion 2' 
           } '3' { 
                cls 
                'Has pulsado la opcion 3' 
           } 's' { 
                return 
           } default {
		'Has de pulsar un numero entre 1-3 o pulsar s'
           }
	     
     } 
     pause 
} until ($input -eq 's')
