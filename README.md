# AMSI-Bypass

# Installation

To install AMSI-Bypass you only need:

- Download and install Microsoft .NET Framework 2.0 Service Pack 1 x86 or 64.  you can find both binaries here:


    https://www.microsoft.com/en-us/download/details.aspx?id=16614 (x86)
    
    https://www.microsoft.com/en-us/download/details.aspx?id=6041 (x64)

- Unzip and enjoy!

# Usage

It´s only necessary to import the module that will load the functions of the tool. We do it through the command `Import-Module .\AMSI_ByPass.psd1`. 
With the command `Get-Module` we can verify that it has been loaded correctly. 

Note: Depending on the policy that we have configured on our computer, we must allow execution of scripts, because the tool contains scripts not signed by Microsoft. We can do a quick bypass of Powershell to allow all scripts to run using the command: **powershell.exe -ep bypass**. 