variable "instance" {
  description = "(required) - The name for a specific VM instance that the IP address belongs to.\nThis is required for network endpoints of type GCE_VM_IP_PORT.\nThe instance must be in the same zone of network endpoint group."
  type        = string
}

variable "ip_address" {
  description = "(required) - IPv4 address of network endpoint. The IP address must belong\nto a VM in GCE (either the primary IP or as part of an aliased IP\nrange)."
  type        = string
}

variable "network_endpoint_group" {
  description = "(required) - The network endpoint group this endpoint is part of."
  type        = string
}

variable "port" {
  description = "(required) - Port number of network endpoint."
  type        = number
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "zone" {
  description = "(optional) - Zone where the containing network endpoint group is located."
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

