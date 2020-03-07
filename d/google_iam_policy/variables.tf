variable "audit_config" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      audit_log_configs = set(object(
        {
          exempted_members = set(string)
          log_type         = string
        }
      ))
      service = string
    }
  ))
  default = []
}

variable "binding" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      members = set(string)
      role    = string
    }
  ))
  default = []
}

