variable "description" {
  description = "(optional) - A human-readable description for the role."
  type        = string
  default     = null
}

variable "permissions" {
  description = "(required) - The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified."
  type        = set(string)
}

variable "project" {
  description = "(optional) - The project that the service account will be created in. Defaults to the provider project configuration."
  type        = string
  default     = null
}

variable "role_id" {
  description = "(required) - The camel case role id to use for this role. Cannot contain - characters."
  type        = string
}

variable "stage" {
  description = "(optional) - The current launch stage of the role. Defaults to GA."
  type        = string
  default     = null
}

variable "title" {
  description = "(required) - A human-readable title for the role."
  type        = string
}

