variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "org_id" {
  description = "(required)"
  type        = string
}

variable "permissions" {
  description = "(required)"
  type        = set(string)
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

