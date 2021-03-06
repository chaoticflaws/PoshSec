@{

# Script module or binary module file associated with this manifest.
ModuleToProcess = 'Forensics.psm1'

# Version number of this module.
ModuleVersion = '1.0.0.0'

# ID used to uniquely identify this module
GUID = 'f6e91c7d-3d0a-41db-9324-9f9f5bb7142d'

# Author of this module
Author = 'PoshSec'

# Copyright statement for this module
Copyright = 'BSD 3-Clause'

# Description of the functionality provided by this module
Description = 'PoshSec Forensics Module'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '2.0'

# Cmdlets to export from this module
CmdletsToExport = '*'

# Functions to export from this module
FunctionsToExport = '*'

# List of all modules packaged with this module.
ModuleList = @(@{ModuleName = 'Forensics'; ModuleVersion = '1.0.0.0'; GUID = 'f6e91c7d-3d0a-41db-9324-9f9f5bb7142d'})

# List of all files packaged with this module
FileList = 'Forensics.psd1', 'Forensics.psm1', 'Get-SecBrowserHelperObjects.ps1','Get-NetStat.ps1','Get-MemImage.ps1', 'Get-NonVolatileData.ps1', 'Get-UserInfo.ps1', 'Get-VolatileandNVData.ps1', 'Get-VolatileData.ps1', 'Set-ForensicsConfig.ps1', 'Get-ProcessOwner.ps1', 'Get-ProcessOwner.ps1', 'Get-SystemUptime'

}

