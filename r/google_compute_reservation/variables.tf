variable "description" {
  description = "(optional) - An optional description of this resource."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - Name of the resource. Provided by the client when the resource is\ncreated. The name must be 1-63 characters long, and comply with\nRFC1035. Specifically, the name must be 1-63 characters long and match\nthe regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the\nfirst character must be a lowercase letter, and all following\ncharacters must be a dash, lowercase letter, or digit, except the last\ncharacter, which cannot be a dash."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "specific_reservation_required" {
  description = "(optional) - When set to true, only VMs that target this reservation by name can\nconsume this reservation. Otherwise, it can be consumed by VMs with\naffinity for any reservation. Defaults to false."
  type        = bool
  default     = null
}

variable "zone" {
  description = "(required) - The zone where the reservation is made."
  type        = string
}

variable "specific_reservation" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      count        = number
      in_use_count = number
      instance_properties = list(object(
        {
          guest_accelerators = list(object(
            {
              accelerator_count = number
              accelerator_type  = string
            }
          ))
          local_ssds = list(object(
            {
              disk_size_gb = number
              interface    = string
            }
          ))
          machine_type     = string
          min_cpu_platform = string
        }
      ))
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

