variable "interconnect_attachment" {
  description = "(optional) - The name or resource link to the VLAN interconnect for this interface. Changing this forces a new interface to be created. Only one of vpn_tunnel and interconnect_attachment can be specified."
  type        = string
  default     = null
}

variable "ip_range" {
  description = "(optional) - IP address and range of the interface. The IP range must be in the RFC3927 link-local IP space. Changing this forces a new interface to be created."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - A unique name for the interface, required by GCE. Changing this forces a new interface to be created."
  type        = string
}

variable "project" {
  description = "(optional) - The ID of the project in which this interface's router belongs. If it is not provided, the provider project is used. Changing this forces a new interface to be created."
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The region this interface's router sits in. If not specified, the project region will be used. Changing this forces a new interface to be created."
  type        = string
  default     = null
}

variable "router" {
  description = "(required) - The name of the router this interface will be attached to. Changing this forces a new interface to be created."
  type        = string
}

variable "vpn_tunnel" {
  description = "(optional) - The name or resource link to the VPN tunnel this interface will be linked to. Changing this forces a new interface to be created. Only one of vpn_tunnel and interconnect_attachment can be specified."
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

