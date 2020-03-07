variable "managed_zone" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "rrdatas" {
  description = "(required)"
  type        = list(string)
}

variable "ttl" {
  description = "(required)"
  type        = number
}

variable "type" {
  description = "(required)"
  type        = string
}

