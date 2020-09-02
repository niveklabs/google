variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "secret" {
  description = "(required)"
  type        = string
}

variable "version" {
  description = "(optional)"
  type        = string
  default     = null
}

