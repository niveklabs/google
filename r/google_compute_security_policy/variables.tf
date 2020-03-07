variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "rule" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      action      = string
      description = string
      match = list(object(
        {
          config = list(object(
            {
              src_ip_ranges = set(string)
            }
          ))
          expr = list(object(
            {
              expression = string
            }
          ))
          versioned_expr = string
        }
      ))
      preview  = bool
      priority = number
    }
  ))
  default = []
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

