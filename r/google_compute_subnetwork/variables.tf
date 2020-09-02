variable "description" {
  description = "(optional) - An optional description of this resource. Provide this property when\nyou create the resource. This field can be set only at resource\ncreation time."
  type        = string
  default     = null
}

variable "enable_flow_logs" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "ip_cidr_range" {
  description = "(required) - The range of internal addresses that are owned by this subnetwork.\nProvide this property when you create the subnetwork. For example,\n10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and\nnon-overlapping within a network. Only IPv4 is supported."
  type        = string
}

variable "name" {
  description = "(required) - The name of the resource, provided by the client when initially\ncreating the resource. The name must be 1-63 characters long, and\ncomply with RFC1035. Specifically, the name must be 1-63 characters\nlong and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which\nmeans the first character must be a lowercase letter, and all\nfollowing characters must be a dash, lowercase letter, or digit,\nexcept the last character, which cannot be a dash."
  type        = string
}

variable "network" {
  description = "(required) - The network this subnet belongs to.\nOnly networks that are in the distributed mode can have subnetworks."
  type        = string
}

variable "private_ip_google_access" {
  description = "(optional) - When enabled, VMs in this subnetwork without external IP addresses can\naccess Google APIs and services by using Private Google Access."
  type        = bool
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The GCP region for this subnetwork."
  type        = string
  default     = null
}

variable "secondary_ip_range" {
  description = "(optional) - An array of configurations for secondary IP ranges for VM instances\ncontained in this subnetwork. The primary IP of such VM must belong\nto the primary ipCidrRange of the subnetwork. The alias IPs may belong\nto either primary or secondary ranges.\n\n**Note**: This field uses [attr-as-block mode](https://www.terraform.io/docs/configuration/attr-as-blocks.html) to avoid\nbreaking users during the 0.12 upgrade. To explicitly send a list\nof zero objects you must use the following syntax:\n'example=[]'\nFor more details about this behavior, see [this section](https://www.terraform.io/docs/configuration/attr-as-blocks.html#defining-a-fixed-object-collection-value)."
  type = list(object(
    {
      ip_cidr_range = string
      range_name    = string
    }
  ))
  default = null
}

variable "log_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      aggregation_interval = string
      flow_sampling        = number
      metadata             = string
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

