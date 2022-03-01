
function Delete_Key_Register

{

    Write-Host -ForegroundColor Red "AVISO: ESTA TÉCNICA REQUIERE DE PRIVILEGIOS ELEVADOS Y SU ACCIÓN PUEDE QUEDAR REGISTRADA EN EN LOG";
    Write-Host "Presione 'y/Y' para continuar con la ejecución, cualquier otra tecla para salir:";
    
    $Key = [Console]::ReadKey($True)
    if( $Key.Key -NE [ConsoleKey]::Y)
    {	    
	    Write-Host $Key.Key;
        Write-Host "Saliendo..";
        #pause;
                
    }
    else
    { 

    
        if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) 
        { 
            #Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs;
            #Start-Process powershell "-ExecutionPolicy Bypass -NoProfile -NoExit -Command `"cd \`"C:\Temp\`"; & \`".\ScriptTest.ps1\`"`"" -Verb RunAs
  
            $path_execution = Get-Location

            #Start-Process powershell.exe " -ExecutionPolicy Bypass -NoExit -Command \`".\borrar_key_reg.ps1\`"`" " -Verb RunAs
            Start-Process powershell.exe " -ExecutionPolicy Bypass -File `"$path_execution\Borrado_registro\borrar_clave_registro.ps1`"" -Verb RunAs    
            pause;
            #exit 
        }
    
        else # No es administrador y por tanto no se puede usar esta técnica
        {
            Write-Host "El usuario actual no tiene los privilegios suficientes y no se puede usar esta técnica.";
            pause;
        
        } 
  
    }

    Show_menu
}