variable "name" {
  description = "(required) - Resource name of the repository, of the form '{{repo}}'.\nThe repo name may contain slashes. eg, 'name/with/slash'"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "pubsub_configs" {
  description = "nested mode: NestingSet, min items: 0, max items: 0"
  type = set(object(
    {
      message_format        = string
      service_account_email = string
      topic                 = string
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

