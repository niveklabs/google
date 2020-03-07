variable "bucket" {
  description = "(required)"
  type        = string
}

variable "custom_attributes" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "event_types" {
  description = "(optional)"
  type        = set(string)
  default     = null
}

variable "object_name_prefix" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "payload_format" {
  description = "(required)"
  type        = string
}

variable "topic" {
  description = "(required)"
  type        = string
}

