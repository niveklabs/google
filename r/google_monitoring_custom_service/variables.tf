variable "display_name" {
  description = "(optional) - Name used for UI elements listing this Service."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "service_id" {
  description = "(optional) - An optional service ID to use. If not given, the server will generate a\nservice ID."
  type        = string
  default     = null
}

variable "telemetry" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      resource_name = string
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

