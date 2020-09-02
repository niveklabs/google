variable "billing_account" {
  description = "(required)"
  type        = string
}

variable "bucket_id" {
  description = "(required)"
  type        = string
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "location" {
  description = "(required)"
  type        = string
}

variable "retention_days" {
  description = "(optional)"
  type        = number
  default     = null
}

