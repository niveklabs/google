variable "disk" {
  description = "(required) - The name of the disk in which the resource policies are attached to."
  type        = string
}

variable "name" {
  description = "(required) - The resource policy to be attached to the disk for scheduling snapshot\ncreation. Do not specify the self link."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "zone" {
  description = "(optional) - A reference to the zone where the disk resides."
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

