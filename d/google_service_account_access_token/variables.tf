variable "delegates" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "lifetime" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "scopes" {
  description = "(required)"
  type        = set(string)
}

variable "target_service_account" {
  description = "(required)"
  type        = string
}

