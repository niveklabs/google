variable "metadata" {
  description = "(required)"
  type        = map(string)
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

