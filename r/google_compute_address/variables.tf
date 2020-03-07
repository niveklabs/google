variable "address" {
  description = "(optional) - The static external IP address represented by this resource. Only\nIPv4 is supported. An address may only be specified for INTERNAL\naddress types. The IP address must be inside the specified subnetwork,\nif any."
  type        = string
  default     = null
}

variable "address_type" {
  description = "(optional) - The type of address to reserve, either INTERNAL or EXTERNAL.\nIf unspecified, defaults to EXTERNAL."
  type        = string
  default     = null
}

variable "description" {
  description = "(optional) - An optional description of this resource."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?'\nwhich means the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash."
  type        = string
}

variable "network_tier" {
  description = "(optional) - The networking tier used for configuring this address. This field can\ntake the following values: PREMIUM or STANDARD. If this field is not\nspecified, it is assumed to be PREMIUM."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "purpose" {
  description = "(optional) - The purpose of this resource, which can be one of the following values:\n\n- GCE_ENDPOINT for addresses that are used by VM instances, alias IP ranges, internal load balancers, and similar resources.\n\nThis should only be set when using an Internal address."
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The Region in which the created address should reside.\nIf it is not provided, the provider region is used."
  type        = string
  default     = null
}

variable "subnetwork" {
  description = "(optional) - The URL of the subnetwork in which to reserve the address. If an IP\naddress is specified, it must be within the subnetwork's IP range.\nThis field can only be used with INTERNAL type with\nGCE_ENDPOINT/DNS_RESOLVER purposes."
  type        = string
  default     = null
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
    }
  ))
  default = []
}

