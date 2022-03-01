function Downgrade_PowerShell  

#Check with --> $PSVersionTable

{
    Write-Host -ForegroundColor Yellow "Haciendo downgrade a la versión 2 de PowerShell...";
    powershell.exe -version 2
    #Write-Host "[+] Bypass de AMSI completado";
    #pause;
    Show_menu
}