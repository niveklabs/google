variable "policy_data" {
  description = "(required)"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "web_backend_service" {
  description = "(required)"
  type        = string
}

