variable "description" {
  description = "(optional) - A description of the instance."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - Resource labels to represent user-provided metadata."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - The resource name of the instance."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tier" {
  description = "(required) - The service tier of the instance. Possible values: [\"TIER_UNSPECIFIED\", \"STANDARD\", \"PREMIUM\", \"BASIC_HDD\", \"BASIC_SSD\", \"HIGH_SCALE_SSD\"]"
  type        = string
}

variable "zone" {
  description = "(required) - The name of the Filestore zone of the instance."
  type        = string
}

variable "file_shares" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      capacity_gb = number
      name        = string
    }
  ))
}

variable "networks" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      ip_addresses      = list(string)
      modes             = list(string)
      network           = string
      reserved_ip_range = string
    }
  ))
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

