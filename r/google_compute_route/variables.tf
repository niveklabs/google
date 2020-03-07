variable "description" {
  description = "(optional) - An optional description of this resource. Provide this property\nwhen you create the resource."
  type        = string
  default     = null
}

variable "dest_range" {
  description = "(required) - The destination range of outgoing packets that this route applies to.\nOnly IPv4 is supported."
  type        = string
}

variable "name" {
  description = "(required) - Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035.  Specifically, the name must be 1-63 characters long and\nmatch the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means\nthe first character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the\nlast character, which cannot be a dash."
  type        = string
}

variable "network" {
  description = "(required) - The network that this route applies to."
  type        = string
}

variable "next_hop_gateway" {
  description = "(optional) - URL to a gateway that should handle matching packets.\nCurrently, you can only specify the internet gateway, using a full or\npartial valid URL:\n* 'https://www.googleapis.com/compute/v1/projects/project/global/gateways/default-internet-gateway'\n* 'projects/project/global/gateways/default-internet-gateway'\n* 'global/gateways/default-internet-gateway'\n* The string 'default-internet-gateway'."
  type        = string
  default     = null
}

variable "next_hop_ilb" {
  description = "(optional) - The URL to a forwarding rule of type loadBalancingScheme=INTERNAL that should handle matching packets.\nYou can only specify the forwarding rule as a partial or full URL. For example, the following are all valid URLs:\nhttps://www.googleapis.com/compute/v1/projects/project/regions/region/forwardingRules/forwardingRule\nregions/region/forwardingRules/forwardingRule\nNote that this can only be used when the destinationRange is a public (non-RFC 1918) IP CIDR range."
  type        = string
  default     = null
}

variable "next_hop_instance" {
  description = "(optional) - URL to an instance that should handle matching packets.\nYou can specify this as a full or partial URL. For example:\n* 'https://www.googleapis.com/compute/v1/projects/project/zones/zone/instances/instance'\n* 'projects/project/zones/zone/instances/instance'\n* 'zones/zone/instances/instance'\n* Just the instance name, with the zone in 'next_hop_instance_zone'."
  type        = string
  default     = null
}

variable "next_hop_instance_zone" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "next_hop_ip" {
  description = "(optional) - Network IP address of an instance that should handle matching packets."
  type        = string
  default     = null
}

variable "next_hop_vpn_tunnel" {
  description = "(optional) - URL to a VpnTunnel that should handle matching packets."
  type        = string
  default     = null
}

variable "priority" {
  description = "(optional) - The priority of this route. Priority is used to break ties in cases\nwhere there is more than one matching route of equal prefix length.\n\nIn the case of two routes with equal prefix length, the one with the\nlowest-numbered priority value wins.\n\nDefault value is 1000. Valid range is 0 through 65535."
  type        = number
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "(optional) - A list of instance tags to which this route applies."
  type        = set(string)
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

