function Compare-SecBaseline {
	<#
		.SYNOPSIS
			Compares two PoshSec Baselines.
	
		.DESCRIPTION
			Compares two PoshSec Baselines.
	
		.PARAMETER  BaselinePath
			The path to the baseline file.
	
		.PARAMETER  ParameterB
			The path to the compare file.
	
		.EXAMPLE
			PS C:\> Compare-Baseline -BaselinePath "C:\baseline\standard.xml" -ComparePath "C:\baseline\newfile.xml"
	
		.INPUTS
			System.String
	
		.OUTPUTS
			PSObject
	
		.NOTES
			AUTHOR: Matt Johnson
			This is a part of the PoshSec Utility-Functions module.
	
		.LINK
			www.poshsec.com
	
		.LINK
			github.com/poshsec
	
	#>
	
	param(
		[Parameter(Mandatory=$true,Position=0)]
		[string]$BaselinePath,
		[Parameter(Mandatory=$true,Position=1)]
		[string]$ComparePath
		
	)
	
	[System.Array]$local:approved = Import-Clixml -Path $BaselinePath
	[System.Array]$local:installed = Import-Clixml -Path $ComparePath

	$local:object = Compare-Object -ReferenceObject $local:approved -DifferenceObject $local:installed -CaseSensitive
	
	$local:object

}