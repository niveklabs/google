variable "account_id" {
  description = "(required) - The account id that is used to generate the service account email address and a stable unique id. It is unique within a project, must be 6-30 characters long, and match the regular expression [a-z]([-a-z0-9]*[a-z0-9]) to comply with RFC1035. Changing this forces a new service account to be created."
  type        = string
}

variable "description" {
  description = "(optional) - A text description of the service account. Must be less than or equal to 256 UTF-8 bytes."
  type        = string
  default     = null
}

variable "display_name" {
  description = "(optional) - The display name for the service account. Can be updated without creating a new resource."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional) - The ID of the project that the service account will be created in. Defaults to the provider project configuration."
  type        = string
  default     = null
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
    }
  ))
  default = []
}

