variable "entry_group" {
  description = "(required)"
  type        = string
}

variable "members" {
  description = "(required)"
  type        = set(string)
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "role" {
  description = "(required)"
  type        = string
}

