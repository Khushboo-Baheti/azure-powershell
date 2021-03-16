
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
Creates or updates a DNS resolver.
.Description
Creates or updates a DNS resolver.
.Example
PS C:\> New-AzDnsResolver -Name sampleResolver -ResourceGroupName powershell-test-rg -VirtualNetworkId /subscriptions/0e5a46b1-de0b-4ec3-a5d7-dda908b4e076/resourceGroups/powershell-test-08b4e076/resourceGroups/powershell-test-rg/providers/Microsoft.Network/virtualNetworks/psvirtualnetworkname16y71mjc -Location westus2

Location Name           Type                           Etag
-------- ----           ----                           ----
westus2  sampleResolver Microsoft.Network/dnsResolvers "000027d5-0000-0800-0000-6040150e0000"
.Example
PS C:\> New-AzDnsResolver -Name sampleResolver -ResourceGroupName powershell-test-rg -VirtualNetworkId /subscriptions/0e5a46b1-de0b-4ec3-a5d7-dda908b4e076/resourceGroups/powershell-test-rg/providers/Microsoft.Network/virtualNetworks/psvirtualnetworkname16y71mjc -Location westus2 -Tag @{"key0" = "value0"}

Location Name           Type                           Etag
-------- ----           ----                           ----
westus2  sampleResolver Microsoft.Network/dnsResolvers "00008cd5-0000-0800-0000-604016c90000"

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolver
.Link
https://docs.microsoft.com/powershell/module/az.dnsresolver/new-azdnsresolver
#>
function New-AzDnsResolver {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolver])]
[CmdletBinding(DefaultParameterSetName='CreateExpanded', PositionalBinding=$false, SupportsShouldProcess, ConfirmImpact='Medium')]
param(
    [Parameter(Mandatory)]
    [Alias('DnsResolverName')]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Path')]
    [System.String]
    # The name of the DNS resolver.
    ${Name},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String]
    # The ID of the target subscription.
    ${SubscriptionId},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Header')]
    [System.String]
    # ETag of the resource.
    # Omit this value to always overwrite the current resource.
    # Specify the last-seen ETag value to prevent accidentally overwriting any concurrent changes.
    ${IfMatch},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Header')]
    [System.String]
    # Set to '*' to allow a new resource to be created, but to prevent updating an existing resource.
    # Other values will be ignored.
    ${IfNoneMatch},

    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Body')]
    [System.String]
    # The geo-location where the resource lives
    ${Location},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Info(PossibleTypes=([Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20.ITrackedResourceTags]))]
    [System.Collections.Hashtable]
    # Resource tags.
    ${Tag},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Body')]
    [System.String]
    # Resource ID.
    ${VirtualNetworkId},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command as a job
    ${AsJob},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Wait for .NET debugger to attach
    ${Break},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be appended to the front of the pipeline
    ${HttpPipelineAppend},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Runtime')]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.SendAsyncStep[]]
    # SendAsync Pipeline Steps to be prepended to the front of the pipeline
    ${HttpPipelinePrepend},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Runtime')]
    [System.Management.Automation.SwitchParameter]
    # Run the command asynchronously
    ${NoWait},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Runtime')]
    [System.Uri]
    # The URI for the proxy server to use
    ${Proxy},

    [Parameter(DontShow)]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Runtime')]
    [System.Management.Automation.PSCredential]
    # Credentials for a proxy server to use for the remote call
    ${ProxyCredential},

    [Parameter(DontShow)]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Runtime')]
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
            CreateExpanded = 'Az.DnsResolver.private\New-AzDnsResolver_CreateExpanded';
        }
        if (('CreateExpanded') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
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
