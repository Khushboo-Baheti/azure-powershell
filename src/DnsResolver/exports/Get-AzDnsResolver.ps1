
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
Gets properties of a DNS resolver.
.Description
Gets properties of a DNS resolver.
.Example
PS C:\> Get-AzDnsResolver -SubscriptionId 0e5a46b1-de0b-4ec3-a5d7-dda908b4e076


Location Name                        Type                           Etag
-------- ----                        ----                           ----
westus2  dnsresolvertestresolver2422 Microsoft.Network/dnsResolvers "8b002671-0000-0800-0000-60386dc10000"
westus2  dnsresolvertestresolver2654 Microsoft.Network/dnsResolvers "8b000f71-0000-0800-0000-60386cc40000"
westus2  dnsresolvertestresolver8416 Microsoft.Network/dnsResolvers "94008a5e-0000-0800-0000-603972f20000"
westus2  dnsresolvertestresolver5036 Microsoft.Network/dnsResolvers "8b002f71-0000-0800-0000-60386df80000"
westus2  dnsresolvertestresolver3718 Microsoft.Network/dnsResolvers "00009b95-0000-0800-0000-603e8b210000"
westus2  dnsresolvertestresolver2758 Microsoft.Network/dnsResolvers "8b00da70-0000-0800-0000-60386b4f0000"
westus2  dnsresolvertestresolver7108 Microsoft.Network/dnsResolvers "00008e95-0000-0800-0000-603e8aee0000"
westus2  dnsresolvertestresolver7639 Microsoft.Network/dnsResolvers "8b00b670-0000-0800-0000-60386b010000"
westus2  dnsresolvertestresolver5912 Microsoft.Network/dnsResolvers "8a00557f-0000-0800-0000-603853bc0000"
westus2  dnsresolvertestguli01       Microsoft.Network/dnsResolvers "48009f1b-0000-0800-0000-60302ec40000"
westus2  dnsresolvertestresolver9892 Microsoft.Network/dnsResolvers "47008640-0000-0800-0000-60300f220000"
.Example
PS C:\> Get-AzDnsResolver -ResourceGroupName powershell-test-rg

Location Name                      Type                           Etag
-------- ----                      ----                           ----
westus2  psdnsresolvername33nmy1fz Microsoft.Network/dnsResolvers "0000c2d4-0000-0800-0000-604013880000"
westus2  psdnsresolvername34dp19g6 Microsoft.Network/dnsResolvers "0000c9d4-0000-0800-0000-604013990000"
westus2  psdnsresolvername35m3jf0n Microsoft.Network/dnsResolvers "0000d0d4-0000-0800-0000-604013a80000"
.Example
PS C:\> Get-AzDnsResolver -ResourceGroupName powershell-test-rg -Name  psdnsresolvername33nmy1fz

Location Name                      Type                           Etag
-------- ----                      ----                           ----
westus2  psdnsresolvername33nmy1fz Microsoft.Network/dnsResolvers "0000c2d4-0000-0800-0000-604013880000"

.Inputs
Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.IDnsResolverIdentity
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolver
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
https://docs.microsoft.com/powershell/module/az.dnsresolver/get-azdnsresolver
#>
function Get-AzDnsResolver {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolver])]
[CmdletBinding(DefaultParameterSetName='List1', PositionalBinding=$false)]
param(
    [Parameter(ParameterSetName='Get', Mandatory)]
    [Alias('DnsResolverName')]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Path')]
    [System.String]
    # The name of the DNS resolver.
    ${Name},

    [Parameter(ParameterSetName='Get', Mandatory)]
    [Parameter(ParameterSetName='List', Mandatory)]
    [Parameter(ParameterSetName='List2', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Path')]
    [System.String]
    # The name of the resource group.
    # The name is case insensitive.
    ${ResourceGroupName},

    [Parameter(ParameterSetName='Get')]
    [Parameter(ParameterSetName='List')]
    [Parameter(ParameterSetName='List1')]
    [Parameter(ParameterSetName='List2')]
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

    [Parameter(ParameterSetName='List2', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Path')]
    [System.String]
    # The name of the virtual network.
    ${VirtualNetworkName},

    [Parameter(ParameterSetName='List')]
    [Parameter(ParameterSetName='List1')]
    [Parameter(ParameterSetName='List2')]
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
            Get = 'Az.DnsResolver.private\Get-AzDnsResolver_Get';
            GetViaIdentity = 'Az.DnsResolver.private\Get-AzDnsResolver_GetViaIdentity';
            List = 'Az.DnsResolver.private\Get-AzDnsResolver_List';
            List1 = 'Az.DnsResolver.private\Get-AzDnsResolver_List1';
            List2 = 'Az.DnsResolver.private\Get-AzDnsResolver_List2';
        }
        if (('Get', 'List', 'List1', 'List2') -contains $parameterSet -and -not $PSBoundParameters.ContainsKey('SubscriptionId')) {
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
