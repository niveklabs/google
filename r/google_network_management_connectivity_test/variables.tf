variable "description" {
  description = "(optional) - The user-supplied description of the Connectivity Test.\nMaximum of 512 characters."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - Resource labels to represent user-provided metadata."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Unique name for the connectivity test."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "protocol" {
  description = "(optional) - IP Protocol of the test. When not provided, \"TCP\" is assumed."
  type        = string
  default     = null
}

variable "related_projects" {
  description = "(optional) - Other projects that may be relevant for reachability analysis.\nThis is applicable to scenarios where a test can cross project\nboundaries."
  type        = list(string)
  default     = null
}

variable "destination" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      instance   = string
      ip_address = string
      network    = string
      port       = number
      project_id = string
    }
  ))
}

variable "source" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      instance     = string
      ip_address   = string
      network      = string
      network_type = string
      port         = number
      project_id   = string
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

