namespace Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview
{
    using static Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Extensions;

    /// <summary>Represents the updatable properties of an inbound endpoint for a DNS resolver.</summary>
    public partial class InboundEndpointPatchProperties :
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IInboundEndpointPatchProperties,
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IInboundEndpointPatchPropertiesInternal
    {

        /// <summary>Backing field for <see cref="Metadata" /> property.</summary>
        private Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IInboundEndpointPatchPropertiesMetadata _metadata;

        /// <summary>Metadata attached to the inbound endpoint.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Origin(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.PropertyOrigin.Owned)]
        public Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IInboundEndpointPatchPropertiesMetadata Metadata { get => (this._metadata = this._metadata ?? new Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.InboundEndpointPatchPropertiesMetadata()); set => this._metadata = value; }

        /// <summary>Creates an new <see cref="InboundEndpointPatchProperties" /> instance.</summary>
        public InboundEndpointPatchProperties()
        {

        }
    }
    /// Represents the updatable properties of an inbound endpoint for a DNS resolver.
    public partial interface IInboundEndpointPatchProperties :
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.IJsonSerializable
    {
        /// <summary>Metadata attached to the inbound endpoint.</summary>
        [Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Info(
        Required = false,
        ReadOnly = false,
        Description = @"Metadata attached to the inbound endpoint.",
        SerializedName = @"metadata",
        PossibleTypes = new [] { typeof(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IInboundEndpointPatchPropertiesMetadata) })]
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IInboundEndpointPatchPropertiesMetadata Metadata { get; set; }

    }
    /// Represents the updatable properties of an inbound endpoint for a DNS resolver.
    internal partial interface IInboundEndpointPatchPropertiesInternal

    {
        /// <summary>Metadata attached to the inbound endpoint.</summary>
        Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IInboundEndpointPatchPropertiesMetadata Metadata { get; set; }

    }
}