variable "bucket_name" {
  description = "(required)"
  type        = string
}

variable "prefix" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

