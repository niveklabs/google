variable "description" {
  description = "(optional) - A human-readable description for the role."
  type        = string
  default     = null
}

variable "org_id" {
  description = "(required) - The numeric ID of the organization in which you want to create a custom role."
  type        = string
}

variable "permissions" {
  description = "(required) - The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified."
  type        = set(string)
}

variable "role_id" {
  description = "(required) - The role id to use for this role."
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

