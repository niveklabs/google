variable "bucket" {
  description = "(required)"
  type        = string
}

variable "role_entity" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

