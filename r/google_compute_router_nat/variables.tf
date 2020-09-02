variable "drain_nat_ips" {
  description = "(optional) - A list of URLs of the IP resources to be drained. These IPs must be\nvalid static external IPs that have been assigned to the NAT."
  type        = set(string)
  default     = null
}

variable "icmp_idle_timeout_sec" {
  description = "(optional) - Timeout (in seconds) for ICMP connections. Defaults to 30s if not set."
  type        = number
  default     = null
}

variable "min_ports_per_vm" {
  description = "(optional) - Minimum number of ports allocated to a VM from this NAT."
  type        = number
  default     = null
}

variable "name" {
  description = "(required) - Name of the NAT service. The name must be 1-63 characters long and\ncomply with RFC1035."
  type        = string
}

variable "nat_ip_allocate_option" {
  description = "(required) - How external IPs should be allocated for this NAT. Valid values are\n'AUTO_ONLY' for only allowing NAT IPs allocated by Google Cloud\nPlatform, or 'MANUAL_ONLY' for only user-allocated NAT IP addresses. Possible values: [\"MANUAL_ONLY\", \"AUTO_ONLY\"]"
  type        = string
}

variable "nat_ips" {
  description = "(optional) - Self-links of NAT IPs. Only valid if natIpAllocateOption\nis set to MANUAL_ONLY."
  type        = set(string)
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - Region where the router and NAT reside."
  type        = string
  default     = null
}

variable "router" {
  description = "(required) - The name of the Cloud Router in which this NAT will be configured."
  type        = string
}

variable "source_subnetwork_ip_ranges_to_nat" {
  description = "(required) - How NAT should be configured per Subnetwork.\nIf 'ALL_SUBNETWORKS_ALL_IP_RANGES', all of the\nIP ranges in every Subnetwork are allowed to Nat.\nIf 'ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES', all of the primary IP\nranges in every Subnetwork are allowed to Nat.\n'LIST_OF_SUBNETWORKS': A list of Subnetworks are allowed to Nat\n(specified in the field subnetwork below). Note that if this field\ncontains ALL_SUBNETWORKS_ALL_IP_RANGES or\nALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES, then there should not be any\nother RouterNat section in any Router for this network in this region. Possible values: [\"ALL_SUBNETWORKS_ALL_IP_RANGES\", \"ALL_SUBNETWORKS_ALL_PRIMARY_IP_RANGES\", \"LIST_OF_SUBNETWORKS\"]"
  type        = string
}

variable "tcp_established_idle_timeout_sec" {
  description = "(optional) - Timeout (in seconds) for TCP established connections.\nDefaults to 1200s if not set."
  type        = number
  default     = null
}

variable "tcp_transitory_idle_timeout_sec" {
  description = "(optional) - Timeout (in seconds) for TCP transitory connections.\nDefaults to 30s if not set."
  type        = number
  default     = null
}

variable "udp_idle_timeout_sec" {
  description = "(optional) - Timeout (in seconds) for UDP connections. Defaults to 30s if not set."
  type        = number
  default     = null
}

variable "log_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enable = bool
      filter = string
    }
  ))
  default = []
}

variable "subnetwork" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      name                     = string
      secondary_ip_range_names = set(string)
      source_ip_ranges_to_nat  = set(string)
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

