variable "bucket" {
  description = "(required)"
  type        = string
}

variable "object" {
  description = "(required)"
  type        = string
}

variable "predefined_acl" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "role_entity" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

