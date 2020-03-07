variable "common_name" {
  description = "(required)"
  type        = string
}

variable "instance" {
  description = "(required)"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

