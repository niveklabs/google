variable "delegates" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "include_email" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "target_audience" {
  description = "(required)"
  type        = string
}

variable "target_service_account" {
  description = "(optional)"
  type        = string
  default     = null
}

