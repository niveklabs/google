variable "additional_authenticated_data" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "ciphertext" {
  description = "(required)"
  type        = string
}

variable "crypto_key" {
  description = "(required)"
  type        = string
}

