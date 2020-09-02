variable "description" {
  description = "(optional) - An optional textual description of the instance group."
  type        = string
  default     = null
}

variable "instances" {
  description = "(optional) - List of instances in the group. They should be given as self_link URLs. When adding instances they must all be in the same network and zone as the instance group."
  type        = set(string)
  default     = null
}

variable "name" {
  description = "(required) - The name of the instance group. Must be 1-63 characters long and comply with RFC1035. Supported characters include lowercase letters, numbers, and hyphens."
  type        = string
}

variable "network" {
  description = "(optional) - The URL of the network the instance group is in. If this is different from the network where the instances are in, the creation fails. Defaults to the network where the instances are in (if neither network nor instances is specified, this field will be blank)."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs. If it is not provided, the provider project is used."
  type        = string
  default     = null
}

variable "zone" {
  description = "(optional) - The zone that this instance group should be created in."
  type        = string
  default     = null
}

variable "named_port" {
  description = "nested mode: NestingList, min items: 0, max items: 0"
  type = set(object(
    {
      name = string
      port = number
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

