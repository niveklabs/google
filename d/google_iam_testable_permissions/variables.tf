variable "custom_support_level" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "full_resource_name" {
  description = "(required)"
  type        = string
}

variable "stages" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

