variable "description" {
  description = "(optional) - An optional description of this resource. Provide this property when\nyou create the resource."
  type        = string
  default     = null
}

variable "destination_ranges" {
  description = "(optional) - If destination ranges are specified, the firewall will apply only to\ntraffic that has destination IP address in these ranges. These ranges\nmust be expressed in CIDR format. Only IPv4 is supported."
  type        = set(string)
  default     = null
}

variable "direction" {
  description = "(optional) - Direction of traffic to which this firewall applies; default is\nINGRESS. Note: For INGRESS traffic, it is NOT supported to specify\ndestinationRanges; For EGRESS traffic, it is NOT supported to specify\nsourceRanges OR sourceTags."
  type        = string
  default     = null
}

variable "disabled" {
  description = "(optional) - Denotes whether the firewall rule is disabled, i.e not applied to the\nnetwork it is associated with. When set to true, the firewall rule is\nnot enforced and the network behaves as if it did not exist. If this\nis unspecified, the firewall rule will be enabled."
  type        = bool
  default     = null
}

variable "enable_logging" {
  description = "(optional) - This field denotes whether to enable logging for a particular\nfirewall rule. If logging is enabled, logs will be exported to\nStackdriver."
  type        = bool
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash."
  type        = string
}

variable "network" {
  description = "(required) - The name or self_link of the network to attach this firewall to."
  type        = string
}

variable "priority" {
  description = "(optional) - Priority for this rule. This is an integer between 0 and 65535, both\ninclusive. When not specified, the value assumed is 1000. Relative\npriorities determine precedence of conflicting rules. Lower value of\npriority implies higher precedence (eg, a rule with priority 0 has\nhigher precedence than a rule with priority 1). DENY rules take\nprecedence over ALLOW rules having equal priority."
  type        = number
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_ranges" {
  description = "(optional) - If source ranges are specified, the firewall will apply only to\ntraffic that has source IP address in these ranges. These ranges must\nbe expressed in CIDR format. One or both of sourceRanges and\nsourceTags may be set. If both properties are set, the firewall will\napply to traffic that has source IP address within sourceRanges OR the\nsource IP that belongs to a tag listed in the sourceTags property. The\nconnection does not need to match both properties for the firewall to\napply. Only IPv4 is supported."
  type        = set(string)
  default     = null
}

variable "source_service_accounts" {
  description = "(optional) - If source service accounts are specified, the firewall will apply only\nto traffic originating from an instance with a service account in this\nlist. Source service accounts cannot be used to control traffic to an\ninstance's external IP address because service accounts are associated\nwith an instance, not an IP address. sourceRanges can be set at the\nsame time as sourceServiceAccounts. If both are set, the firewall will\napply to traffic that has source IP address within sourceRanges OR the\nsource IP belongs to an instance with service account listed in\nsourceServiceAccount. The connection does not need to match both\nproperties for the firewall to apply. sourceServiceAccounts cannot be\nused at the same time as sourceTags or targetTags."
  type        = set(string)
  default     = null
}

variable "source_tags" {
  description = "(optional) - If source tags are specified, the firewall will apply only to traffic\nwith source IP that belongs to a tag listed in source tags. Source\ntags cannot be used to control traffic to an instance's external IP\naddress. Because tags are associated with an instance, not an IP\naddress. One or both of sourceRanges and sourceTags may be set. If\nboth properties are set, the firewall will apply to traffic that has\nsource IP address within sourceRanges OR the source IP that belongs to\na tag listed in the sourceTags property. The connection does not need\nto match both properties for the firewall to apply."
  type        = set(string)
  default     = null
}

variable "target_service_accounts" {
  description = "(optional) - A list of service accounts indicating sets of instances located in the\nnetwork that may make network connections as specified in allowed[].\ntargetServiceAccounts cannot be used at the same time as targetTags or\nsourceTags. If neither targetServiceAccounts nor targetTags are\nspecified, the firewall rule applies to all instances on the specified\nnetwork."
  type        = set(string)
  default     = null
}

variable "target_tags" {
  description = "(optional) - A list of instance tags indicating sets of instances located in the\nnetwork that may make network connections as specified in allowed[].\nIf no targetTags are specified, the firewall rule applies to all\ninstances on the specified network."
  type        = set(string)
  default     = null
}

variable "allow" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      ports    = list(string)
      protocol = string
    }
  ))
  default = []
}

variable "deny" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      ports    = list(string)
      protocol = string
    }
  ))
  default = []
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      update = string
    }
  ))
  default = []
}

