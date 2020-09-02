variable "description" {
  description = "(optional) - A textual description field. Defaults to 'Managed by Terraform'."
  type        = string
  default     = null
}

variable "enable_inbound_forwarding" {
  description = "(optional) - Allows networks bound to this policy to receive DNS queries sent\nby VMs or applications over VPN connections. When enabled, a\nvirtual IP address will be allocated from each of the sub-networks\nthat are bound to this policy."
  type        = bool
  default     = null
}

variable "enable_logging" {
  description = "(optional) - Controls whether logging is enabled for the networks bound to this policy.\nDefaults to no logging if not set."
  type        = bool
  default     = null
}

variable "name" {
  description = "(required) - User assigned name for this policy."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "alternative_name_server_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      target_name_servers = set(object(
        {
          ipv4_address = string
        }
      ))
    }
  ))
  default = []
}

variable "networks" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      network_url = string
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

