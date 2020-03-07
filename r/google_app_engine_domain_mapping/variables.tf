variable "domain_name" {
  description = "(required) - Relative name of the domain serving the application. Example: example.com."
  type        = string
}

variable "override_strategy" {
  description = "(optional) - Whether the domain creation should override any existing mappings for this domain.\nBy default, overrides are rejected."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "ssl_settings" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      certificate_id                 = string
      pending_managed_certificate_id = string
      ssl_management_type            = string
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

