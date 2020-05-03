variable "fqdn" {
  description = "(optional) - Fully qualified domain name of network endpoint.\nThis can only be specified when network_endpoint_type of the NEG is INTERNET_FQDN_PORT."
  type        = string
  default     = null
}

variable "global_network_endpoint_group" {
  description = "(required) - The global network endpoint group this endpoint is part of."
  type        = string
}

variable "ip_address" {
  description = "(optional) - IPv4 address external endpoint."
  type        = string
  default     = null
}

variable "port" {
  description = "(required) - Port number of the external endpoint."
  type        = number
}

variable "project" {
  description = "(optional)"
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

