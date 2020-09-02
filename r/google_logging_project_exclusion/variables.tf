variable "description" {
  description = "(optional) - A human-readable description."
  type        = string
  default     = null
}

variable "disabled" {
  description = "(optional) - Whether this exclusion rule should be disabled or not. This defaults to false."
  type        = bool
  default     = null
}

variable "filter" {
  description = "(required) - The filter to apply when excluding logs. Only log entries that match the filter are excluded."
  type        = string
}

variable "name" {
  description = "(required) - The name of the logging exclusion."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

