
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
Gets properties of an inbound endpoint for a DNS resolver.
.Description
Gets properties of an inbound endpoint for a DNS resolver.
.Example
PS C:\> Get-AzDnsResolverInboundEndpoint -DnsResolverName pstestdnsresolvername -ResourceGroupName powershell-test-rg

Name                   Type                                            Etag
----                   ----                                            ----
sampleInboundEndpoint  Microsoft.Network/dnsResolvers/inboundEndpoints "0b008451-0000-0800-0000-60402b960000"
sampleInboundEndpoint1 Microsoft.Network/dnsResolvers/inboundEndpoints "0b0071aa-0000-0800-0000-60406a2d0000"
.Example
PS C:\> Get-AzDnsResolverInboundEndpoint -DnsResolverName pstestdnsresolvername -Name sampleInboundEndpoint -ResourceGroupName powershell-test-rg

Name                  Type                                            Etag
----                  ----                                            ----
sampleInboundEndpoint Microsoft.Network/dnsResolvers/inboundEndpoints "0b008451-0000-0800-0000-60402b960000"

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.IDnsResolverIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IInboundEndpoint
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

INPUTOBJECT <IDnsResolverIdentity>: Identity Parameter
  [DnsResolverName <String>]: The name of the DNS resolver.
  [Id <String>]: Resource identity path
  [InboundEndpointName <String>]: The name of the inbound endpoint for the DNS resolver.
  [ResourceGroupName <String>]: The name of the resource group. The name is case insensitive.
  [SubscriptionId <String>]: The ID of the target subscription.
  [VirtualNetworkName <String>]: The name of the virtual network.
.Link
https://docs.microsoft.com/powershell/module/az.dnsresolver/get-azdnsresolverinboundendpoint
#>
function Get-AzDnsResolverInboundEndpoint {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IInboundEndpoint])]
[CmdletBinding(DefaultParameterSetName='List', PositionalBinding=$false)]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Path')]
    [System.String]
    # The name of the DNS resolver.
    ${DnsResolverName},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Alias('InboundEndpointName')]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Path')]
    [System.String]
    # The name of the inbound endpoint for the DNS resolver.
    ${Name},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter(ParameterSetName='Get')]
    [Parameter(ParameterSetName='List')]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.DefaultInfo(Script='(Get-AzContext).Subscription.Id')]
    [System.String[]]
    # The ID of the target subscription.
    ${SubscriptionId},

    [Parameter(ParameterSetName='GetViaIdentity', Mandatory, ValueFromPipeline)]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Path')]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.IDnsResolverIdentity]
    # Identity Parameter
    # To construct, see NOTES section for INPUTOBJECT properties and create a hash table.
    ${InputObject},

    [Parameter(ParameterSetName='List')]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Query')]
    [System.Int32]
    # The maximum number of results to return.
    # If not specified, returns up to 100 results.
    ${Top},

    [Parameter()]
    [Alias('AzureRMContext', 'AzureCredential')]
    [ValidateNotNull()]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Azure')]
    [System.Management.Automation.PSObject]
    # The credentials, account, tenant, and subscription used for communication with Azure.
    ${DefaultProfile},

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
            Get = 'Az.DnsResolver.private\Get-AzDnsResolverInboundEndpoint_Get';
            GetViaIdentity = 'Az.DnsResolver.private\Get-AzDnsResolverInboundEndpoint_GetViaIdentity';
            List = 'Az.DnsResolver.private\Get-AzDnsResolverInboundEndpoint_List';
        }
        if (('Get', 'List') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
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
