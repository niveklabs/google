variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "disabled" {
  description = "(optional)"
  type        = bool
  default     = null
}

variable "filter" {
  description = "(required)"
  type        = string
}

variable "folder" {
  description = "(required)"
  type        = string
}

variable "name" {
  description = "(required)"
  type        = string
}

