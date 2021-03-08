﻿// ----------------------------------------------------------------------------------
//
// Copyright Microsoft Corporation
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ----------------------------------------------------------------------------------

using Microsoft.Azure.Commands.Compute.Common;
using Microsoft.Azure.Commands.Compute.Models;
using Microsoft.Azure.Commands.ResourceManager.Common.ArgumentCompleters;
using System.Management.Automation;
using System.Linq;

namespace Microsoft.Azure.Commands.Compute
{
    [Cmdlet("Get", ResourceManager.Common.AzureRMConstants.AzureRMPrefix + "VMExtension")]
    [OutputType(typeof(PSVirtualMachineExtension))]
    public class GetAzureVMExtensionCommand : VirtualMachineExtensionBaseCmdlet
    {
        [Parameter(
           Mandatory = true,
           Position = 0,
           ValueFromPipelineByPropertyName = true,
           HelpMessage = "The resource group name.")]
        [ResourceGroupCompleter]
        [ValidateNotNullOrEmpty]
        public string ResourceGroupName { get; set; }

        [Alias("ResourceName")]
        [Parameter(
            Mandatory = true,
            Position = 1,
            ValueFromPipelineByPropertyName = true,
            HelpMessage = "The virtual machine name.")]
        [ResourceNameCompleter("Microsoft.Compute/virtualMachines", "ResourceGroupName")]
        [ValidateNotNullOrEmpty]
        public string VMName { get; set; }

        [Alias("ExtensionName")]
        [Parameter(
            Mandatory = false,
            Position = 2,
            ValueFromPipelineByPropertyName = true,
            HelpMessage = "The extension name.")]
        [ResourceNameCompleter("Microsoft.Compute/virtualMachines/extensions", "ResourceGroupName", "VMName")]
        [ValidateNotNullOrEmpty]
        public string Name { get; set; }

        [Parameter(
            Position = 3,
            ValueFromPipelineByPropertyName = true,
            HelpMessage = "To show the status.")]
        [ValidateNotNullOrEmpty]
        public SwitchParameter Status { get; set; }

        public override void ExecuteCmdlet()
        {
            base.ExecuteCmdlet();

            ExecuteClientAction(() =>
            {
                if (!string.IsNullOrEmpty(Name))
                {
                    if (Status.IsPresent)
                    {
                        var result = this.VirtualMachineExtensionClient.GetWithInstanceView(this.ResourceGroupName, this.VMName, this.Name);
                        WriteObject(result.ToPSVirtualMachineExtension(this.ResourceGroupName, this.VMName));
                    }
                    else
                    {
                        var result = this.VirtualMachineExtensionClient.GetWithHttpMessagesAsync(this.ResourceGroupName,
                            this.VMName, this.Name).GetAwaiter().GetResult();
                        WriteObject(result.ToPSVirtualMachineExtension(this.ResourceGroupName, this.VMName));
                    }
                }
                else
                {
                    if (Status.IsPresent)
                    {
                        var result = this.VirtualMachineExtensionClient.ListWithInstanceView(this.ResourceGroupName, this.VMName).Body.Value;
                        WriteObject(result.ToList().Select(t => t.ToPSVirtualMachineExtension(this.ResourceGroupName, this.VMName)), true);
                    }
                    else
                    {
                        var result = this.VirtualMachineExtensionClient.ListWithHttpMessagesAsync(this.ResourceGroupName, this.VMName).GetAwaiter().GetResult().Body.Value;
                        WriteObject(result.ToList().Select(t => t.ToPSVirtualMachineExtension(this.ResourceGroupName, this.VMName)), true);
                    }
                }
            });
        }
    }
}
