namespace Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview
{
    using static Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Extensions;

    /// <summary>IP configuration.</summary>
    public partial class IPConfiguration :
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IIPConfiguration,
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IIPConfigurationInternal
    {

        /// <summary>Internal Acessors for Subnet</summary>
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.ISubResource Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IIPConfigurationInternal.Subnet { get => (this._subnet = this._subnet ?? new Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.SubResource()); set { {_subnet = value;} } }

        /// <summary>Backing field for <see cref="PrivateIPAddress" /> property.</summary>
        private string _privateIPAddress;

        /// <summary>Private IP address of the IP configuration.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Origin(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.PropertyOrigin.Owned)]
        public string PrivateIPAddress { get => this._privateIPAddress; set => this._privateIPAddress = value; }

        /// <summary>Backing field for <see cref="PrivateIPAllocationMethod" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Support.IPAllocationMethod? _privateIPAllocationMethod;

        /// <summary>Private IP address allocation method.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Origin(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.PropertyOrigin.Owned)]
        public Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Support.IPAllocationMethod? PrivateIPAllocationMethod { get => this._privateIPAllocationMethod; set => this._privateIPAllocationMethod = value; }

        /// <summary>Backing field for <see cref="Subnet" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.ISubResource _subnet;

        /// <summary>The reference to the subnet bound to the IP configuration.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Origin(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.PropertyOrigin.Owned)]
        internal Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.ISubResource Subnet { get => (this._subnet = this._subnet ?? new Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.SubResource()); set => this._subnet = value; }

        /// <summary>Resource ID.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Origin(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.PropertyOrigin.Inlined)]
        public string SubnetId { get => ((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.ISubResourceInternal)Subnet).Id; set => ((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.ISubResourceInternal)Subnet).Id = value ?? null; }

        /// <summary>Creates an new <see cref="IPConfiguration" /> instance.</summary>
        public IPConfiguration()
        {

        }
    }
    /// IP configuration.
    public partial interface IIPConfiguration :
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.IJsonSerializable
    {
        /// <summary>Private IP address of the IP configuration.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Private IP address of the IP configuration.",
        SerializedName = @"privateIpAddress",
        PossibleTypes = new [] { typeof(string) })]
        string PrivateIPAddress { get; set; }
        /// <summary>Private IP address allocation method.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Private IP address allocation method.",
        SerializedName = @"privateIpAllocationMethod",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Support.IPAllocationMethod) })]
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Support.IPAllocationMethod? PrivateIPAllocationMethod { get; set; }
        /// <summary>Resource ID.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Resource ID.",
        SerializedName = @"id",
        PossibleTypes = new [] { typeof(string) })]
        string SubnetId { get; set; }

    }
    /// IP configuration.
    internal partial interface IIPConfigurationInternal

    {
        /// <summary>Private IP address of the IP configuration.</summary>
        string PrivateIPAddress { get; set; }
        /// <summary>Private IP address allocation method.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Support.IPAllocationMethod? PrivateIPAllocationMethod { get; set; }
        /// <summary>The reference to the subnet bound to the IP configuration.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.ISubResource Subnet { get; set; }
        /// <summary>Resource ID.</summary>
        string SubnetId { get; set; }

    }
}