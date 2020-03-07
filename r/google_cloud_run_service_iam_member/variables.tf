variable "location" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "member" {
  description = "(required)"
  type        = string
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

