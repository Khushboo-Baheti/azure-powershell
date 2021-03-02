#
# Module manifest for module 'AzureRM.Websites'
#
# Generated by: Microsoft Corporation
#
# Generated on: 3/2/2021
#

@{

# Script module or binary module file associated with this manifest.
# RootModule = ''

# Version number of this module.
ModuleVersion = '5.2.1'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = 'cc69c625-e961-43f4-8b50-0061eba6e4b6'

# Author of this module
Author = 'Microsoft Corporation'

# Company or vendor of this module
CompanyName = 'Microsoft Corporation'

# Copyright statement for this module
Copyright = 'Microsoft Corporation. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Microsoft Azure PowerShell - Websites service cmdlets for Azure Resource Manager'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.0'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
DotNetFrameworkVersion = '4.5.2'

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
CLRVersion = '4.0'

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
RequiredModules = @(@{ModuleName = 'AzureRM.Profile'; ModuleVersion = '5.8.4'; })

# Assemblies that must be loaded prior to importing this module
RequiredAssemblies = '.\Microsoft.Azure.Management.Websites.dll', 
               '.\Microsoft.Azure.Commands.Common.Strategies.4.dll'

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
NestedModules = @('.\Microsoft.Azure.Commands.Websites.dll')

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = @()

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = 'Get-AzureRmAppServicePlan', 'Set-AzureRmAppServicePlan', 
               'New-AzureRmAppServicePlan', 'Remove-AzureRmAppServicePlan', 
               'Get-AzureRmWebAppSlot', 'Get-AzureRmWebAppSlotConfigName', 
               'Get-AzureRmWebAppSlotMetrics', 
               'Get-AzureRmWebAppSlotPublishingProfile', 'New-AzureRmWebAppSlot', 
               'Remove-AzureRmWebAppSlot', 
               'Reset-AzureRmWebAppSlotPublishingProfile', 
               'Restart-AzureRmWebAppSlot', 'Set-AzureRmWebAppSlot', 
               'Set-AzureRmWebAppSlotConfigName', 'Start-AzureRmWebAppSlot', 
               'Stop-AzureRmWebAppSlot', 'Switch-AzureRmWebAppSlot', 
               'New-AzureRmWebAppDatabaseBackupSetting', 
               'Restore-AzureRmWebAppBackup', 'Get-AzureRmAppServicePlanMetrics', 
               'Get-AzureRmWebAppCertificate', 'Get-AzureRmWebAppSSLBinding', 
               'New-AzureRmWebAppSSLBinding', 'Remove-AzureRmWebAppSSLBinding', 
               'Edit-AzureRmWebAppBackupConfiguration', 'Get-AzureRmWebAppBackup', 
               'Get-AzureRmWebAppBackupConfiguration', 
               'Get-AzureRmWebAppBackupList', 'Get-AzureRmWebAppMetrics', 
               'Get-AzureRmWebAppPublishingProfile', 'Get-AzureRmWebApp', 
               'New-AzureRmWebAppBackup', 'Remove-AzureRmWebApp', 
               'New-AzureRmWebApp', 'Remove-AzureRmWebAppBackup', 
               'Reset-AzureRmWebAppPublishingProfile', 'Restart-AzureRmWebApp', 
               'Set-AzureRmWebApp', 'Start-AzureRmWebApp', 'Stop-AzureRmWebApp', 
               'Get-AzureRmWebAppSnapshot', 'Restore-AzureRmWebAppSnapshot', 
               'Get-AzureRmDeletedWebApp', 'Restore-AzureRmDeletedWebApp', 
               'Get-AzureRmWebAppContainerContinuousDeploymentUrl', 
               'Enter-AzureRmWebAppContainerPSSession', 
               'New-AzureRmWebAppContainerPSSession'

# Variables to export from this module
# VariablesToExport = @()

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = 'Swap-AzureRmWebAppSlot'

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = 'Azure','ResourceManager','ARM','Websites','Website','AppService'

        # A URL to the license for this module.
        LicenseUri = 'https://aka.ms/azps-license'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/Azure/azure-powershell'

        # A URL to an icon representing this module.
        # IconUri = ''

        # ReleaseNotes of this module
        ReleaseNotes = '* This module is outdated and will go out of support on 29 February 2024.
* The Az.Websites module has all the capabilities of AzureRM.Websites and provides the following improvements:
    - Greater security with token cache encryption and improved authentication.
    - Availability in Azure Cloud Shell and on Linux and macOS.
    - Support for all Azure services.
    - Allows use of Azure access tokens.
* We encourage you to start using the Az module as soon as possible to take advantage of these improvements.
* [Update your scripts](https://docs.microsoft.com/powershell/azure/migrate-from-azurerm-to-az)?that use AzureRM PowerShell modules to use Az PowerShell modules by 29 February 2024.
* To automatically update your scripts, follow the?[quickstart guide](https://docs.microsoft.com/powershell/azure/quickstart-migrate-azurerm-to-az-automatically).'

        # Prerelease string of this module
        # Prerelease = ''

        # Flag to indicate whether the module requires explicit user acceptance for install/update/save
        # RequireLicenseAcceptance = $false

        # External dependent modules of this module
        # ExternalModuleDependencies = @()

    } # End of PSData hashtable

 } # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

