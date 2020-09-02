variable "name" {
  description = "(required) - The ID of the instance or a fully qualified identifier for the instance."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - The name of the Redis region of the instance."
  type        = string
  default     = null
}

