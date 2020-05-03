variable "application_title" {
  description = "(required) - Application name displayed on OAuth consent screen."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "support_email" {
  description = "(required) - Support email displayed on the OAuth consent screen. Can be either a\nuser or group email. When a user email is specified, the caller must\nbe the user with the associated email address. When a group email is\nspecified, the caller can be either a user or a service account which\nis an owner of the specified group in Cloud Identity."
  type        = string
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

