variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "service_account_email" {
  description = "(required) - The email address of the key's associated service account."
  type        = string
}

variable "state" {
  description = "(optional) - The state of the key. Can be set to one of ACTIVE, INACTIVE. Default value: \"ACTIVE\" Possible values: [\"ACTIVE\", \"INACTIVE\"]"
  type        = string
  default     = null
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

