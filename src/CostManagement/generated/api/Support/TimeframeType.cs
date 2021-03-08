// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is regenerated.

namespace Microsoft.Azure.PowerShell.Cmdlets.CostManagement.Support
{

    public partial struct TimeframeType :
        System.IEquatable<TimeframeType>
    {
        public static Microsoft.Azure.PowerShell.Cmdlets.CostManagement.Support.TimeframeType BillingMonthToDate = @"BillingMonthToDate";

        public static Microsoft.Azure.PowerShell.Cmdlets.CostManagement.Support.TimeframeType Custom = @"Custom";

        public static Microsoft.Azure.PowerShell.Cmdlets.CostManagement.Support.TimeframeType MonthToDate = @"MonthToDate";

        public static Microsoft.Azure.PowerShell.Cmdlets.CostManagement.Support.TimeframeType TheLastBillingMonth = @"TheLastBillingMonth";

        public static Microsoft.Azure.PowerShell.Cmdlets.CostManagement.Support.TimeframeType TheLastMonth = @"TheLastMonth";

        public static Microsoft.Azure.PowerShell.Cmdlets.CostManagement.Support.TimeframeType WeekToDate = @"WeekToDate";

        /// <summary>the value for an instance of the <see cref="TimeframeType" /> Enum.</summary>
        private string _value { get; set; }

        /// <summary>Conversion from arbitrary object to TimeframeType</summary>
        /// <param name="value">the value to convert to an instance of <see cref="TimeframeType" />.</param>
        internal static object CreateFrom(object value)
        {
            return new TimeframeType(System.Convert.ToString(value));
        }

        /// <summary>Compares values of enum type TimeframeType</summary>
        /// <param name="e">the value to compare against this instance.</param>
        /// <returns><c>true</c> if the two instances are equal to the same value</returns>
        public bool Equals(Microsoft.Azure.PowerShell.Cmdlets.CostManagement.Support.TimeframeType e)
        {
            return _value.Equals(e._value);
        }

        /// <summary>Compares values of enum type TimeframeType (override for Object)</summary>
        /// <param name="obj">the value to compare against this instance.</param>
        /// <returns><c>true</c> if the two instances are equal to the same value</returns>
        public override bool Equals(object obj)
        {
            return obj is TimeframeType && Equals((TimeframeType)obj);
        }

        /// <summary>Returns hashCode for enum TimeframeType</summary>
        /// <returns>The hashCode of the value</returns>
        public override int GetHashCode()
        {
            return this._value.GetHashCode();
        }

        /// <summary>Creates an instance of the <see cref="TimeframeType" Enum class./></summary>
        /// <param name="underlyingValue">the value to create an instance for.</param>
        private TimeframeType(string underlyingValue)
        {
            this._value = underlyingValue;
        }

        /// <summary>Returns string representation for TimeframeType</summary>
        /// <returns>A string for this value.</returns>
        public override string ToString()
        {
            return this._value;
        }

        /// <summary>Implicit operator to convert string to TimeframeType</summary>
        /// <param name="value">the value to convert to an instance of <see cref="TimeframeType" />.</param>

        public static implicit operator TimeframeType(string value)
        {
            return new TimeframeType(value);
        }

        /// <summary>Implicit operator to convert TimeframeType to string</summary>
        /// <param name="e">the value to convert to an instance of <see cref="TimeframeType" />.</param>

        public static implicit operator string(Microsoft.Azure.PowerShell.Cmdlets.CostManagement.Support.TimeframeType e)
        {
            return e._value;
        }

        /// <summary>Overriding != operator for enum TimeframeType</summary>
        /// <param name="e1">the value to compare against <see cref="e2" /></param>
        /// <param name="e2">the value to compare against <see cref="e1" /></param>
        /// <returns><c>true</c> if the two instances are not equal to the same value</returns>
        public static bool operator !=(Microsoft.Azure.PowerShell.Cmdlets.CostManagement.Support.TimeframeType e1, Microsoft.Azure.PowerShell.Cmdlets.CostManagement.Support.TimeframeType e2)
        {
            return !e2.Equals(e1);
        }

        /// <summary>Overriding == operator for enum TimeframeType</summary>
        /// <param name="e1">the value to compare against <see cref="e2" /></param>
        /// <param name="e2">the value to compare against <see cref="e1" /></param>
        /// <returns><c>true</c> if the two instances are equal to the same value</returns>
        public static bool operator ==(Microsoft.Azure.PowerShell.Cmdlets.CostManagement.Support.TimeframeType e1, Microsoft.Azure.PowerShell.Cmdlets.CostManagement.Support.TimeframeType e2)
        {
            return e2.Equals(e1);
        }
    }
}