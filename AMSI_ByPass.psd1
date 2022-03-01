@{

# Module file associated with this manifest.
#ModuleToProcess = 'AMSI_ByPass.psm1'
RootModule = 'AMSI_Bypass.psm1'

# Version number of this module.
ModuleVersion = '1.0.0.0'

# ID used to uniquely identify this module
#GUID = 'xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx'

# Author of this module
Author = 'David Toquero'


# Description of the functionality provided by this module
Description = 'Varias técnicas para eludir AMSI a través de PowerShell'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '2.0'

# Functions to export from this module
FunctionsToExport = @(
    'Run_Bypass'
    #'Write_option_menu'
    )

# List of all files packaged with this module
<#
FileList =  
'AMSI_ByPass.psm1',
'AMSI_ByPass.psd1'
#>

}