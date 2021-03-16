namespace Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview
{
    using Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.PowerShell;

    /// <summary>Represents the properties of a DNS resolver.</summary>
    [System.ComponentModel.TypeConverter(typeof(DnsResolverPropertiesTypeConverter))]
    public partial class DnsResolverProperties
    {

        /// <summary>
        /// <c>AfterDeserializeDictionary</c> will be called after the deserialization has finished, allowing customization of the
        /// object before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>

        partial void AfterDeserializeDictionary(global::System.Collections.IDictionary content);

        /// <summary>
        /// <c>AfterDeserializePSObject</c> will be called after the deserialization has finished, allowing customization of the object
        /// before it is returned. Implement this method in a partial class to enable this behavior
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>

        partial void AfterDeserializePSObject(global::System.Management.Automation.PSObject content);

        /// <summary>
        /// <c>BeforeDeserializeDictionary</c> will be called before the deserialization has commenced, allowing complete customization
        /// of the object before it is deserialized.
        /// If you wish to disable the default deserialization entirely, return <c>true</c> in the <see "returnNow" /> output parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        /// <param name="returnNow">Determines if the rest of the serialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeDeserializeDictionary(global::System.Collections.IDictionary content, ref bool returnNow);

        /// <summary>
        /// <c>BeforeDeserializePSObject</c> will be called before the deserialization has commenced, allowing complete customization
        /// of the object before it is deserialized.
        /// If you wish to disable the default deserialization entirely, return <c>true</c> in the <see "returnNow" /> output parameter.
        /// Implement this method in a partial class to enable this behavior.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        /// <param name="returnNow">Determines if the rest of the serialization should be processed, or if the method should return
        /// instantly.</param>

        partial void BeforeDeserializePSObject(global::System.Management.Automation.PSObject content, ref bool returnNow);

        /// <summary>
        /// Deserializes a <see cref="global::System.Collections.IDictionary" /> into an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.DnsResolverProperties"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        /// <returns>
        /// an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverProperties"
        /// />.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverProperties DeserializeFromDictionary(global::System.Collections.IDictionary content)
        {
            return new DnsResolverProperties(content);
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Management.Automation.PSObject" /> into an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.DnsResolverProperties"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        /// <returns>
        /// an instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverProperties"
        /// />.
        /// </returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverProperties DeserializeFromPSObject(global::System.Management.Automation.PSObject content)
        {
            return new DnsResolverProperties(content);
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Collections.IDictionary" /> into a new instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.DnsResolverProperties"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Collections.IDictionary content that should be used.</param>
        internal DnsResolverProperties(global::System.Collections.IDictionary content)
        {
            bool returnNow = false;
            BeforeDeserializeDictionary(content, ref returnNow);
            if (returnNow)
            {
                return;
            }
            // actually deserialize
            ((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).VirtualNetwork = (Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.ISubResource) content.GetValueForProperty("VirtualNetwork",((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).VirtualNetwork, Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.SubResourceTypeConverter.ConvertFrom);
            ((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).DnsResolverState = (Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Support.DnsResolverState?) content.GetValueForProperty("DnsResolverState",((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).DnsResolverState, Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Support.DnsResolverState.CreateFrom);
            ((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).ProvisioningState = (Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Support.ProvisioningState?) content.GetValueForProperty("ProvisioningState",((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).ProvisioningState, Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Support.ProvisioningState.CreateFrom);
            ((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).ResourceGuid = (string) content.GetValueForProperty("ResourceGuid",((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).ResourceGuid, global::System.Convert.ToString);
            ((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).VirtualNetworkId = (string) content.GetValueForProperty("VirtualNetworkId",((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).VirtualNetworkId, global::System.Convert.ToString);
            AfterDeserializeDictionary(content);
        }

        /// <summary>
        /// Deserializes a <see cref="global::System.Management.Automation.PSObject" /> into a new instance of <see cref="Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.DnsResolverProperties"
        /// />.
        /// </summary>
        /// <param name="content">The global::System.Management.Automation.PSObject content that should be used.</param>
        internal DnsResolverProperties(global::System.Management.Automation.PSObject content)
        {
            bool returnNow = false;
            BeforeDeserializePSObject(content, ref returnNow);
            if (returnNow)
            {
                return;
            }
            // actually deserialize
            ((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).VirtualNetwork = (Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.ISubResource) content.GetValueForProperty("VirtualNetwork",((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).VirtualNetwork, Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.SubResourceTypeConverter.ConvertFrom);
            ((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).DnsResolverState = (Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Support.DnsResolverState?) content.GetValueForProperty("DnsResolverState",((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).DnsResolverState, Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Support.DnsResolverState.CreateFrom);
            ((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).ProvisioningState = (Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Support.ProvisioningState?) content.GetValueForProperty("ProvisioningState",((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).ProvisioningState, Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Support.ProvisioningState.CreateFrom);
            ((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).ResourceGuid = (string) content.GetValueForProperty("ResourceGuid",((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).ResourceGuid, global::System.Convert.ToString);
            ((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).VirtualNetworkId = (string) content.GetValueForProperty("VirtualNetworkId",((Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverPropertiesInternal)this).VirtualNetworkId, global::System.Convert.ToString);
            AfterDeserializePSObject(content);
        }

        /// <summary>
        /// Creates a new instance of <see cref="DnsResolverProperties" />, deserializing the content from a json string.
        /// </summary>
        /// <param name="jsonText">a string containing a JSON serialized instance of this model.</param>
        /// <returns>an instance of the <see cref="className" /> model class.</returns>
        public static Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Models.Api20200401Preview.IDnsResolverProperties FromJsonString(string jsonText) => FromJson(Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.Json.JsonNode.Parse(jsonText));

        /// <summary>Serializes this instance to a json string.</summary>

        /// <returns>a <see cref="System.String" /> containing this model serialized to JSON text.</returns>
        public string ToJsonString() => ToJson(null, Microsoft.Azure.PowerShell.Cmdlets.DnsResolver.Runtime.SerializationMode.IncludeAll)?.ToString();
    }
    /// Represents the properties of a DNS resolver.
    [System.ComponentModel.TypeConverter(typeof(DnsResolverPropertiesTypeConverter))]
    public partial interface IDnsResolverProperties

    {

    }
}