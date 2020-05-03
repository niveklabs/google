variable "disk" {
  description = "(required) - The name of the regional disk in which the resource policies are attached to."
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

variable "region" {
  description = "(optional) - A reference to the region where the disk resides."
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

