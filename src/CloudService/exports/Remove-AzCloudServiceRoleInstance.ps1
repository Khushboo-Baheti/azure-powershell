
# ----------------------------------------------------------------------------------
#
# Copyright Microsoft Corporation
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Deletes role instances in a cloud service.
.Description
Deletes role instances in a cloud service.
.Example
PS C:\> Remove-AzCloudServiceInstance -ResourceGroup "ContosOrg" -CloudServiceName "ContosoCS" -RoleInstance "ContosoFrontEnd_IN_0"

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.ICloudServiceIdentity
.Outputs
System.Boolean
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <ICloudServiceIdentity>: Identity Parameter
  [CloudServiceName <String>]: 
  [Id <String>]: Resource identity path
  [ResourceGroupName <String>]: 
  [RoleInstanceName <String>]: Name of the role instance.
  [RoleName <String>]: Name of the role.
  [SubscriptionId <String>]: Subscription credentials which uniquely identify Microsoft Azure subscription. The subscription ID forms part of the URI for every service call.
  [UpdateDomain <Int32?>]: Specifies an integer value that identifies the update domain. Update domains are identified with a zero-based index: the first update domain has an ID of 0, the second has an ID of 1, and so on.
.Link
https://docs.microsoft.com/powershell/module/az.cloudservice/remove-azcloudserviceroleinstance
#>
function Remove-AzCloudServiceRoleInstance {
[OutputType([System.Boolean])]
[CmdletBinding(DefaultParameterSetName='DeleteExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(ParameterSetName='DeleteExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Path')]
    [System.String]
    # Name of the cloud service.
    ${CloudServiceName},

    [Parameter(ParameterSetName='DeleteExpanded', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Path')]
    [System.String]
    # Name of the resource group.
    ${ResourceGroupName},

    [Parameter(ParameterSetName='DeleteExpanded')]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # Subscription credentials which uniquely identify Microsoft Azure subscription.
    # The subscription ID forms part of the URI for every service call.
    ${SubscriptionId},

    [Parameter(ParameterSetName='DeleteViaIdentityExpanded', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Models.ICloudServiceIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Body')]
    [System.String[]]
    # List of cloud service role instance names.
    # Value of '*' will signify all role instances of the cloud service.
    ${RoleInstance},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Returns true when the command succeeds
    ${PassThru},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.CloudService.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Use the default credentials for the proxy
    ${ProxyUseDefaultCredentials}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            DeleteExpanded = 'Az.CloudService.private\Remove-AzCloudServiceRoleInstance_DeleteExpanded';
            DeleteViaIdentityExpanded = 'Az.CloudService.private\Remove-AzCloudServiceRoleInstance_DeleteViaIdentityExpanded';
        }
        if (('DeleteExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
            $PSBoundParameters['SubscriptionId'] = (Get-AzContext).Subscription.Id
        }
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        throw
    }
}

end {
    try {
        $steppablePipeline.End()
    } catch {
        throw
    }
}
}
