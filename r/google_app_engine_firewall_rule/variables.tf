variable "action" {
  description = "(required) - The action to take if this rule matches. Possible values: [\"UNSPECIFIED_ACTION\", \"ALLOW\", \"DENY\"]"
  type        = string
}

variable "description" {
  description = "(optional) - An optional string description of this rule."
  type        = string
  default     = null
}

variable "priority" {
  description = "(optional) - A positive integer that defines the order of rule evaluation.\nRules with the lowest priority are evaluated first.\n\nA default rule at priority Int32.MaxValue matches all IPv4 and\nIPv6 traffic when no previous rule matches. Only the action of\nthis rule can be modified by the user."
  type        = number
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "source_range" {
  description = "(required) - IP address or range, defined using CIDR notation, of requests that this rule applies to."
  type        = string
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

