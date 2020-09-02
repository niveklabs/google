variable "description" {
  description = "(optional) - An optional description of this security policy. Max size is 2048."
  type        = string
  default     = null
}

variable "name" {
  description = "(required) - The name of the security policy."
  type        = string
}

variable "project" {
  description = "(optional) - The project in which the resource belongs. If it is not provided, the provider project is used."
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

