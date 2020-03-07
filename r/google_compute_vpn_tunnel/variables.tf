variable "description" {
  description = "(optional) - An optional description of this resource."
  type        = string
  default     = null
}

variable "ike_version" {
  description = "(optional) - IKE protocol version to use when establishing the VPN tunnel with\npeer VPN gateway.\nAcceptable IKE versions are 1 or 2. Default version is 2."
  type        = number
  default     = null
}

variable "local_traffic_selector" {
  description = "(optional) - Local traffic selector to use when establishing the VPN tunnel with\npeer VPN gateway. The value should be a CIDR formatted string,\nfor example '192.168.0.0/16'. The ranges should be disjoint.\nOnly IPv4 is supported."
  type        = set(string)
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63\ncharacters long and match the regular expression\n'[a-z]([-a-z0-9]*[a-z0-9])?' which means the first character\nmust be a lowercase letter, and all following characters must\nbe a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash."
  type        = string
}

variable "peer_ip" {
  description = "(optional) - IP address of the peer VPN gateway. Only IPv4 is supported."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The region where the tunnel is located. If unset, is set to the region of 'target_vpn_gateway'."
  type        = string
  default     = null
}

variable "remote_traffic_selector" {
  description = "(optional) - Remote traffic selector to use when establishing the VPN tunnel with\npeer VPN gateway. The value should be a CIDR formatted string,\nfor example '192.168.0.0/16'. The ranges should be disjoint.\nOnly IPv4 is supported."
  type        = set(string)
  default     = null
}

variable "router" {
  description = "(optional) - URL of router resource to be used for dynamic routing."
  type        = string
  default     = null
}

variable "shared_secret" {
  description = "(required) - Shared secret used to set the secure session between the Cloud VPN\ngateway and the peer VPN gateway."
  type        = string
}

variable "target_vpn_gateway" {
  description = "(optional) - URL of the Target VPN gateway with which this VPN tunnel is\nassociated."
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

