# AMSI-Bypass

**AMSI-Bypass** is a collection of the best known techniques for bypassing AMSI. Can be used to aid penetration testers.

## Installation

To install AMSI-Bypass you only need:

- Download and install Microsoft .NET Framework 2.0 Service Pack 1 x86 or 64.  you can find both binaries here:


    https://www.microsoft.com/en-us/download/details.aspx?id=16614 (x86)
    
    https://www.microsoft.com/en-us/download/details.aspx?id=6041 (x64)

- Unzip and enjoy!

## Usage

To import the module that will load all functions of the tool:

`PS C:\tools\AMSI_Bypass> Import-Module .\AMSI_ByPass.psd1`

Verify that it has been loaded correctly:

`PS C:\tools\AMSI_Bypass> Get-Module`  

![Import and check module](/images/check-module.png)

Then call "Run_bypass" function:

`PS C:\tools\AMSI_Bypass> Run_bypass`

![Run_bypass](/images/Run-Bypass.png)

Note: Depending on the policy that we have configured on our computer, we must allow execution of scripts, because the tool contains scripts not signed by Microsoft. We can do a quick bypass of Powershell to allow all scripts to run using the command: **`powershell.exe -ep bypass`**.

## Tutorial

Simple. After to run 'Run_bypass' function only have to choose one option (enter a number from 1-6, or 0 to exit). Tool will try to bypass AMSI through technique selected.

```

     ('-.      _   .-')      .-')                    .-. .-')                   _ (`-.     ('-.       .-')      .-')    
    ( OO ).-. ( '.( OO )_   ( OO ).                  \  ( OO )                 ( (OO  )   ( OO ).-.  ( OO ).   ( OO ).  
    / . --. /  ,--.   ,--.)(_)---\_)   ,-.-')         ;-----.\    ,--.   ,--. _.`     \   / . --. / (_)---\_) (_)---\_) 
    | \-.  \   |   `.'   | /    _ |    |  |OO)        | .-.  |     \  `.'  / (__...--''   | \-.  \  /    _ |  /    _ |
    '-'  |  |  |         | \  :` `.    |  |  \        | '-' /_)  .-')     /   |  /  | | .-'-'  |  | \  :` `.  \  :` `.  
    | |_.'  |  |  |'.'|  |  '...''.)   |  |(_/        | .-. `.  (OO  \   /    |  |_.' |  \| |_.'  |  '...''.)  '...''.) 
    |  .-.  |  |  |   |  | .-._)   \  ,|  |_.'        | |  \  |  |   /  /\_   |  .___.'   |  .-.  | .-._)   \ .-._)   \ 
    |  | |  |  |  |   |  | \       / (_|  |           | '--'  /  `-./  /.__)  |  |        |  | |  | \       / \       / 
    `--' `--'  `--'   `--'  `-----'    `--'           `------'     `--'       `--'        `--' `--'  `-----'   `-----' 

Bienvenido a la herramienta de bypass de AMSI.
Las técnicas pueden variar su efectividad en función del motor antivirus / EPR instalado en el equipo.

Por favor, seleccione un método de byPass de AMSI...

[+] Método 1: PowerShell Downgrade

[+] Método 2: Parcheo de memoria

[+] Método 3: Codificar cadena en base64

[+] Método 4: Hooking a Amsi-ScanBuffer

[+] Método 5: Forzar un error

[+] Método 6: Eliminar clave del registro. ¡NO RECOMENDADA!

[+] Método 7: DLL Hijacking

[+] 0. Salir

Opción:
```

## Examples

### Patching memory (option 2)

![Example patching memory](/images/example-2.png)
