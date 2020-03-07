variable "location" {
  description = "(optional)"
  type        = string
  default     = null
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

variable "role" {
  description = "(required)"
  type        = string
}

variable "service" {
  description = "(required)"
  type        = string
}

