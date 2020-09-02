variable "blocked" {
  description = "(optional) - If a device is blocked, connections or requests from this device will fail."
  type        = bool
  default     = null
}

variable "log_level" {
  description = "(optional) - The logging verbosity for device activity. Possible values: [\"NONE\", \"ERROR\", \"INFO\", \"DEBUG\"]"
  type        = string
  default     = null
}

variable "metadata" {
  description = "(optional) - The metadata key-value pairs assigned to the device."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - A unique name for the resource."
  type        = string
}

variable "registry" {
  description = "(required) - The name of the device registry where this device should be created."
  type        = string
}

variable "credentials" {
  description = "nested mode: NestingList, min items: 0, max items: 3"
  type = set(object(
    {
      expiration_time = string
      public_key = list(object(
        {
          format = string
          key    = string
        }
      ))
    }
  ))
  default = []
}

variable "gateway_config" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      gateway_auth_method        = string
      gateway_type               = string
      last_accessed_gateway_id   = string
      last_accessed_gateway_time = string
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

