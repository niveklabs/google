variable "key_algorithm" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "pgp_key" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "private_key_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "public_key_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "service_account_id" {
  description = "(required)"
  type        = string
}

