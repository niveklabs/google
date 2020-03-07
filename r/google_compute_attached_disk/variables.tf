variable "device_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "disk" {
  description = "(required)"
  type        = string
}

variable "instance" {
  description = "(required)"
  type        = string
}

variable "mode" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "zone" {
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

