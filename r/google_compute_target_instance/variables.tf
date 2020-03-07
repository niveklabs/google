variable "description" {
  description = "(optional) - An optional description of this resource."
  type        = string
  default     = null
}

variable "instance" {
  description = "(required) - The Compute instance VM handling traffic for this target instance.\nAccepts the instance self-link, relative path\n(e.g. 'projects/project/zones/zone/instances/instance') or name. If\nname is given, the zone will default to the given zone or\nthe provider-default zone and the project will default to the\nprovider-level project."
  type        = string
}

variable "name" {
  description = "(required) - Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash."
  type        = string
}

variable "nat_policy" {
  description = "(optional) - NAT option controlling how IPs are NAT'ed to the instance.\nCurrently only NO_NAT (default value) is supported."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "zone" {
  description = "(optional) - URL of the zone where the target instance resides."
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

