variable "members" {
  description = "(required)"
  type        = set(string)
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "role" {
  description = "(required)"
  type        = string
}

variable "secret_id" {
  description = "(required)"
  type        = string
}

