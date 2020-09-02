variable "address" {
  description = "(optional) - The IP address or beginning of the address range represented by this\nresource. This can be supplied as an input to reserve a specific\naddress or omitted to allow GCP to choose a valid one for you."
  type        = string
  default     = null
}

variable "address_type" {
  description = "(optional) - The type of the address to reserve.\n\n* EXTERNAL indicates public/external single IP address.\n* INTERNAL indicates internal IP ranges belonging to some network. Default value: \"EXTERNAL\" Possible values: [\"EXTERNAL\", \"INTERNAL\"]"
  type        = string
  default     = null
}

variable "description" {
  description = "(optional) - An optional description of this resource."
  type        = string
  default     = null
}

variable "ip_version" {
  description = "(optional) - The IP Version that will be used by this address. The default value is 'IPV4'. Possible values: [\"IPV4\", \"IPV6\"]"
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash."
  type        = string
}

variable "network" {
  description = "(optional) - The URL of the network in which to reserve the IP range. The IP range\nmust be in RFC1918 space. The network cannot be deleted if there are\nany reserved IP ranges referring to it.\n\nThis should only be set when using an Internal address."
  type        = string
  default     = null
}

variable "prefix_length" {
  description = "(optional) - The prefix length of the IP range. If not present, it means the\naddress field is a single IP address.\n\nThis field is not applicable to addresses with addressType=EXTERNAL."
  type        = number
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "purpose" {
  description = "(optional) - The purpose of the resource. For global internal addresses it can be\n\n* VPC_PEERING - for peer networks\n\nThis should only be set when using an Internal address. Possible values: [\"VPC_PEERING\"]"
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

