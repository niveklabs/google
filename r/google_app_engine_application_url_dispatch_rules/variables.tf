variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "dispatch_rules" {
  description = "nested mode: NestingList, min items: 1, max items: 0"
  type = set(object(
    {
      domain  = string
      path    = string
      service = string
    }
  ))
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
      update = string
    }
  ))
  default = []
}

