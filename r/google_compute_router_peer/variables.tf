variable "advertise_mode" {
  description = "(optional) - User-specified flag to indicate which mode to use for advertisement.\nValid values of this enum field are: 'DEFAULT', 'CUSTOM' Default value: \"DEFAULT\" Possible values: [\"DEFAULT\", \"CUSTOM\"]"
  type        = string
  default     = null
}

variable "advertised_groups" {
  description = "(optional) - User-specified list of prefix groups to advertise in custom\nmode, which can take one of the following options:\n\n* 'ALL_SUBNETS': Advertises all available subnets, including peer VPC subnets.\n* 'ALL_VPC_SUBNETS': Advertises the router's own VPC subnets.\n* 'ALL_PEER_VPC_SUBNETS': Advertises peer subnets of the router's VPC network.\n\n\nNote that this field can only be populated if advertiseMode is 'CUSTOM'\nand overrides the list defined for the router (in the \"bgp\" message).\nThese groups are advertised in addition to any specified prefixes.\nLeave this field blank to advertise no custom groups."
  type        = list(string)
  default     = null
}

variable "advertised_route_priority" {
  description = "(optional) - The priority of routes advertised to this BGP peer.\nWhere there is more than one matching route of maximum\nlength, the routes with the lowest priority value win."
  type        = number
  default     = null
}

variable "interface" {
  description = "(required) - Name of the interface the BGP peer is associated with."
  type        = string
}

variable "name" {
  description = "(required) - Name of this BGP peer. The name must be 1-63 characters long,\nand comply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which\nmeans the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash."
  type        = string
}

variable "peer_asn" {
  description = "(required) - Peer BGP Autonomous System Number (ASN).\nEach BGP interface may use a different value."
  type        = number
}

variable "peer_ip_address" {
  description = "(required) - IP address of the BGP interface outside Google Cloud Platform.\nOnly IPv4 is supported."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - Region where the router and BgpPeer reside.\nIf it is not provided, the provider region is used."
  type        = string
  default     = null
}

variable "router" {
  description = "(required) - The name of the Cloud Router in which this BgpPeer will be configured."
  type        = string
}

variable "advertised_ip_ranges" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      description = string
      range       = string
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

