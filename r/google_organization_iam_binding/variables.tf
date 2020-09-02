variable "members" {
  description = "(required)"
  type        = set(string)
}

variable "org_id" {
  description = "(required) - The numeric ID of the organization in which you want to manage the audit logging config."
  type        = string
}

variable "role" {
  description = "(required)"
  type        = string
}

variable "condition" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      description = string
      expression  = string
      title       = string
    }
  ))
  default = []
}

