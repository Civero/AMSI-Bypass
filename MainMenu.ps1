Function Run_Bypass 
{
    Clear-Host
    Show_logo
    Show_menu
    Write_option_menu

}#Run_bypass


Function Show_logo
{
    Write-Host "";
    Write-Host "";
    Write-Host "     ('-.      _   .-')      .-')                    .-. .-')                   _ ('-.     ('-.       .-')      .-')    ";
    Write-Host "    ( OO ).-. ( '.( OO )_   ( OO ).                  \  ( OO )                 ( (OO  )   ( OO ).-.  ( OO ).   ( OO ).  ";
    Write-Host "    / . --. /  ,--.   ,--.)(_)---\_)   ,-.-')         ;-----.\    ,--.   ,--. _.'     \   / . --. / (_)---\_) (_)---\_) ";
    Write-Host "    | \-.  \   |   '.'   | /    _ |    |  |OO)        | .-.  |     \  '.'  / (__...--''   | \-.  \  /    _ |  /    _ |  ";
    Write-Host "  .-'-'  |  |  |         | \  :' '.    |  |  \        | '-' /_)  .-')     /   |  /  | | .-'-'  |  | \  :' '.  \  :' '.  ";
    Write-Host "   \| |_.'  |  |  |'.'|  |  '..'''.)   |  |(_/        | .-. '.  (OO  \   /    |  |_.' |  \| |_.'  |  '..'''.)  '..'''.) ";
    Write-Host "    |  .-.  |  |  |   |  | .-._)   \  ,|  |_.'        | |  \  |  |   /  /\_   |  .___.'   |  .-.  | .-._)   \ .-._)   \ ";
    Write-Host "    |  | |  |  |  |   |  | \       / (_|  |           | '--'  /  '-./  /.__)  |  |        |  | |  | \       / \       / ";
    Write-Host "    '--' '--'  '--'   '--'  '-----'    '--'           '------'     '--'       '--'        '--' '--'  '-----'   '-----'  ";

}



Function Show_menu
    { 
        #Clear-Host
        Write-Host "";
        Write-Host "Bienvenido a la herramienta de bypass de AMSI.";
        Write-Host  "Las técnicas pueden variar su efectividad en función del motor antivirus / EPR instalado en el equipo.";
        Write-Host "";
        Write-Host "Por favor, seleccione un método de byPass de AMSI...";
        Write-Host "";
        Write-Host "";
        Write-Host -ForegroundColor Green "[+] Método 1: PowerShell Downgrade";
        Write-Host "";
        Write-Host -ForegroundColor Green "[+] Método 2: Parcheo de memoria";
        Write-Host "";
        Write-Host -ForegroundColor Green "[+] Método 3: Codificar cadena en base64";
        Write-Host "";
        Write-Host -ForegroundColor Green "[+] Método 4: Hooking a Amsi-ScanBuffer";
        Write-Host "";
        Write-Host -ForegroundColor Green "[+] Método 5: Forzar un error";
        Write-Host "";
        Write-Host -ForegroundColor Green "[+] Método 6: Eliminar clave del registro. ¡NO RECOMENDADA!";
        Write-Host "";
        Write-Host -ForegroundColor Green "[+] Método 7: DLL Hijacking";
        Write-Host "";
        Write-Host -ForegroundColor Green "[+] 0. Salir";
        Write-Host "";
    }


Function Write_option_menu 
{

    while(($inp = Read-Host -Prompt "Opción: ") -ne "0")
    {
 
        switch($inp)
        {

                1 {
                    Clear-Host
                    Write-Host "---------------------------------";
                    Write-Host " Método 1: PowerShell Downgrade  "; 
                    Write-Host "---------------------------------";

                    #Funcion Downgrade
                    Downgrade_PowerShell
                
                    break
                }
                2 {
                    Clear-Host
                    Write-Host "-------------------------------";
                    Write-Host " Método 2: Parcheo de memoria"  ;
                    Write-Host "-------------------------------";

                    #Funcion para parchear memoria
                    Memory_patch
                     
                    break
                }
                3 {
                    Clear-Host
                    Write-Host "---------------------------------------";
                    Write-Host " Método 3: Codificar cadena en base64"  ;
                    Write-Host "---------------------------------------";

                    #Funcion para parchear memoria
                    Encode_base64
                     
                    break
                }
                4 {
                    Clear-Host
                    Write-Host "------------------------------------";
                    Write-Host " Método 4: Hooking a Amsi-ScanBuffer" ;
                    Write-Host "------------------------------------"; 
                    
                    #Funcion Hooking
                    Hooking

                    break
                }
                5 {
                    Clear-Host
                    Write-Host "---------------------------";
                    Write-Host " Método 5: Forzar un error" ;
                    Write-Host "---------------------------"; 
                    
                    #Funcion Forzar error
                    Force_Error

                    break
                }
                6 {
                    Clear-Host
                    Write-Host "---------------------------------------";
                    Write-Host " Método 6: Eliminar clave del registro" ;
                    Write-Host "---------------------------------------"; 
                    
                    #Funcion para borrar la clave del registro
                    Delete_Key_Register

                    break
                }
                7 {
                    Clear-Host
                    Write-Host "-------------------------";
                    Write-Host " Método 7: DLL Hijacking" ;
                    Write-Host "-------------------------"; 
                    
                    #Funcion para secuestrar AMSI.dll
                    DLL_Hijacking

                    break
                }

                0 {
                     Write-Host "Exit"; 
                     break}

                    default {Write-Host -ForegroundColor red -BackgroundColor white "Opción inválida. Por favor, seleccione otra opción.";
                
                }
        
        }#switch
 
    
    }#while

    break

}
