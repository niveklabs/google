variable "enabled" {
  description = "(optional) - The current state of the SecretVersion."
  type        = bool
  default     = null
}

variable "secret" {
  description = "(required) - Secret Manager secret resource"
  type        = string
}

variable "secret_data" {
  description = "(optional) - The secret data. Must be no larger than 64KiB."
  type        = string
  default     = null
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
    }
  ))
  default = []
}

