namespace Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview
{
    using static Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Extensions;

    /// <summary>Describes a DNS resolver for PATCH operation.</summary>
    public partial class DnsResolverPatch :
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPatch,
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPatchInternal
    {

        /// <summary>Backing field for <see cref="Tag" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPatchTags _tag;

        /// <summary>Tags for DNS Resolver.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Origin(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.PropertyOrigin.Owned)]
        public Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPatchTags Tag { get => (this._tag = this._tag ?? new Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.DnsResolverPatchTags()); set => this._tag = value; }

        /// <summary>Creates an new <see cref="DnsResolverPatch" /> instance.</summary>
        public DnsResolverPatch()
        {

        }
    }
    /// Describes a DNS resolver for PATCH operation.
    public partial interface IDnsResolverPatch :
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.IJsonSerializable
    {
        /// <summary>Tags for DNS Resolver.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Tags for DNS Resolver.",
        SerializedName = @"tags",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPatchTags) })]
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPatchTags Tag { get; set; }

    }
    /// Describes a DNS resolver for PATCH operation.
    internal partial interface IDnsResolverPatchInternal

    {
        /// <summary>Tags for DNS Resolver.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPatchTags Tag { get; set; }

    }
}