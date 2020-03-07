variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "service" {
  description = "(required)"
  type        = string
}

variable "audit_log_config" {
  description = "nested mode: NestingSet, min items: 1, max items: 0"
  type = set(object(
    {
      exempted_members = set(string)
      log_type         = string
    }
  ))
}

