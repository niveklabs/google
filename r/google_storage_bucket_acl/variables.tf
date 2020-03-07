variable "bucket" {
  description = "(required)"
  type        = string
}

variable "default_acl" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "predefined_acl" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "role_entity" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

