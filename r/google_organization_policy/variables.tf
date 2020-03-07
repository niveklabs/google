variable "constraint" {
  description = "(required)"
  type        = string
}

variable "org_id" {
  description = "(required)"
  type        = string
}

variable "version" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "boolean_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enforced = bool
    }
  ))
  default = []
}

variable "list_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      allow = list(object(
        {
          all    = bool
          values = set(string)
        }
      ))
      deny = list(object(
        {
          all    = bool
          values = set(string)
        }
      ))
      inherit_from_parent = bool
      suggested_value     = string
    }
  ))
  default = []
}

variable "restore_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      default = bool
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
      read   = string
      update = string
    }
  ))
  default = []
}

