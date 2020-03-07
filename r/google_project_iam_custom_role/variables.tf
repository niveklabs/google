variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "permissions" {
  description = "(required)"
  type        = set(string)
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "role_id" {
  description = "(required)"
  type        = string
}

variable "stage" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "title" {
  description = "(required)"
  type        = string
}

