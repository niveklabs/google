variable "default_port" {
  description = "(optional) - The default port used if the port number is not specified in the\nnetwork endpoint."
  type        = number
  default     = null
}

variable "description" {
  description = "(optional) - An optional description of this resource. Provide this property when\nyou create the resource."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource; provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash."
  type        = string
}

variable "network" {
  description = "(required) - The network to which all network endpoints in the NEG belong.\nUses \"default\" project network if unspecified."
  type        = string
}

variable "network_endpoint_type" {
  description = "(optional) - Type of network endpoints in this network endpoint group. The only supported value is GCE_VM_IP_PORT"
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "subnetwork" {
  description = "(optional) - Optional subnetwork to which all network endpoints in the NEG belong."
  type        = string
  default     = null
}

variable "zone" {
  description = "(optional) - Zone where the network endpoint group is located."
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

