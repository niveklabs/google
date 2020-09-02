variable "constraint" {
  description = "(required) - The name of the Constraint the Policy is configuring, for example, serviceuser.services."
  type        = string
}

variable "project" {
  description = "(required) - The project ID."
  type        = string
}

variable "version" {
  description = "(optional) - Version of the Policy. Default version is 0."
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

