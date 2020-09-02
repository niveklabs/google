variable "folder" {
  description = "(required)"
  type        = string
}

variable "service" {
  description = "(required) - Service which will be enabled for audit logging. The special value allServices covers all services."
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

