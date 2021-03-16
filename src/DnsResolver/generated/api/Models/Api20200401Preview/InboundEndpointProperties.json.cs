namespace Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview
{
    using static Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Extensions;

    /// <summary>Represents the properties of an inbound endpoint for a DNS resolver.</summary>
    public partial class InboundEndpointProperties
    {

        /// <summary>
        /// <c>AfterFromJson</c> will be called after the json deserialization has finished, allowing customization of the object
        /// before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="json">The JsonNode that should be deserialized into this object.</param>

        partial void AfterFromJson(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonObject json);

        /// <summary>
        /// <c>AfterToJson</c> will be called after the json erialization has finished, allowing customization of the <see cref="Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonObject"
        /// /> before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="container">The JSON container that the serialization result will be placed in.</param>

        partial void AfterToJson(ref Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonObject container);

        /// <summary>
        /// <c>BeforeFromJson</c> will be called before the json deserialization has commenced, allowing complete customization of
        /// the object before it is deserialized.
        /// If you wish to disable the default deserialization entirely, return <c>true</c> in the <see "returnNow" /> output parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="json">The JsonNode that should be deserialized into this object.</param>
        /// <param name="returnNow">Determines if the rest of the deserialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeFromJson(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonObject json, ref bool returnNow);

        /// <summary>
        /// <c>BeforeToJson</c> will be called before the json serialization has commenced, allowing complete customization of the
        /// object before it is serialized.
        /// If you wish to disable the default serialization entirely, return <c>true</c> in the <see "returnNow" /> output parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="container">The JSON container that the serialization result will be placed in.</param>
        /// <param name="returnNow">Determines if the rest of the serialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeToJson(ref Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonObject container, ref bool returnNow);

        /// <summary>
        /// Deserializes a <see cref="Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonNode"/> into an instance of Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IInboundEndpointProperties.
        /// </summary>
        /// <param name="node">a <see cref="Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonNode" /> to deserialize from.</param>
        /// <returns>
        /// an instance of Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IInboundEndpointProperties.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IInboundEndpointProperties FromJson(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonNode node)
        {
            return node is Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonObject json ? new InboundEndpointProperties(json) : null;
        }

        /// <summary>
        /// Deserializes a Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonObject into a new instance of <see cref="InboundEndpointProperties" />.
        /// </summary>
        /// <param name="json">A Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonObject instance to deserialize from.</param>
        internal InboundEndpointProperties(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonObject json)
        {
            bool returnNow = false;
            BeforeFromJson(json, ref returnNow);
            if (returnNow)
            {
                return;
            }
            {_iPConfiguration = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonArray>("ipConfigurations"), out var __jsonIPConfigurations) ? If( __jsonIPConfigurations as Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonArray, out var __v) ? new global::System.Func<Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IIPConfiguration[]>(()=> global::System.Linq.Enumerable.ToArray(global::System.Linq.Enumerable.Select(__v, (__u)=>(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IIPConfiguration) (Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IPConfiguration.FromJson(__u) )) ))() : null : IPConfiguration;}
            {_metadata = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonObject>("metadata"), out var __jsonMetadata) ? Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.InboundEndpointPropertiesMetadata.FromJson(__jsonMetadata) : Metadata;}
            {_provisioningState = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonString>("provisioningState"), out var __jsonProvisioningState) ? (string)__jsonProvisioningState : (string)ProvisioningState;}
            {_resourceGuid = If( json?.PropertyT<Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonString>("resourceGuid"), out var __jsonResourceGuid) ? (string)__jsonResourceGuid : (string)ResourceGuid;}
            AfterFromJson(json);
        }

        /// <summary>
        /// Serializes this instance of <see cref="InboundEndpointProperties" /> into a <see cref="Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonNode" />.
        /// </summary>
        /// <param name="container">The <see cref="Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonObject"/> container to serialize this object into. If the caller
        /// passes in <c>null</c>, a new instance will be created and returned to the caller.</param>
        /// <param name="serializationMode">Allows the caller to choose the depth of the serialization. See <see cref="Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.SerializationMode"/>.</param>
        /// <returns>
        /// a serialized instance of <see cref="InboundEndpointProperties" /> as a <see cref="Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonNode" />.
        /// </returns>
        public Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonNode ToJson(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonObject container, Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.SerializationMode serializationMode)
        {
            container = container ?? new Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonObject();

            bool returnNow = false;
            BeforeToJson(ref container, ref returnNow);
            if (returnNow)
            {
                return container;
            }
            if (null != this._iPConfiguration)
            {
                var __w = new Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.XNodeArray();
                foreach( var __x in this._iPConfiguration )
                {
                    AddIf(__x?.ToJson(null, serializationMode) ,__w.Add);
                }
                container.Add("ipConfigurations",__w);
            }
            AddIf( null != this._metadata ? (Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonNode) this._metadata.ToJson(null,serializationMode) : null, "metadata" ,container.Add );
            if (serializationMode.HasFlag(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.SerializationMode.IncludeReadOnly))
            {
                AddIf( null != (((object)this._provisioningState)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonString(this._provisioningState.ToString()) : null, "provisioningState" ,container.Add );
            }
            if (serializationMode.HasFlag(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.SerializationMode.IncludeReadOnly))
            {
                AddIf( null != (((object)this._resourceGuid)?.ToString()) ? (Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonNode) new Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonString(this._resourceGuid.ToString()) : null, "resourceGuid" ,container.Add );
            }
            AfterToJson(ref container);
            return container;
        }
    }
}