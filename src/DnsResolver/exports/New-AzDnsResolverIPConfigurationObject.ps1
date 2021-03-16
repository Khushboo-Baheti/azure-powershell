
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
Create a in-memory object for IPConfiguration
.Description
Create a in-memory object for IPConfiguration
.Example
PS C:\> New-AzDnsResolverIPConfigurationObject -PrivateIPAddress 1.1.2.12 -PrivateIPAllocationMethod Dynamic -SubnetId /subscriptions/0e5a46b1-de0b-4ec3-a5d7-dda908b4e076/resourceGroups/powershell-test-rg/providers/Microsoft.Network/virtualNetworks/psvirtualnetworkname44yqt9mb/subnets/pssubnetname44c6v0lr

PrivateIPAddress PrivateIPAllocationMethod
---------------- -------------------------
1.1.2.12         Dynamic

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IPConfiguration
.Link
https://docs.microsoft.com/en-us/powershell/module/az.DnsResolver/new-AzDnsResolverIPConfigurationObject
#>
function New-AzDnsResolverIPConfigurationObject {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IPConfiguration])]
[CmdletBinding(PositionalBinding=$false)]
param(
    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Body')]
    [System.String]
    # Private IP address of the IP configuration.
    ${PrivateIPAddress},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Support.IPAllocationMethod]
    # Private IP address allocation method.
    ${PrivateIPAllocationMethod},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Category('Body')]
    [System.String]
    # Resource ID.
    ${SubnetId}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName
        $mapping = @{
            __AllParameterSets = 'Az.DnsResolver.custom\New-AzDnsResolverIPConfigurationObject';
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
