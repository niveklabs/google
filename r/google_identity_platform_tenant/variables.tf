variable "allow_password_signup" {
  description = "(optional) - Whether to allow email/password user authentication."
  type        = bool
  default     = null
}

variable "disable_auth" {
  description = "(optional) - Whether authentication is disabled for the tenant. If true, the users under\nthe disabled tenant are not allowed to sign-in. Admins of the disabled tenant\nare not able to manage its users."
  type        = bool
  default     = null
}

variable "display_name" {
  description = "(required) - Human friendly display name of the tenant."
  type        = string
}

variable "enable_email_link_signin" {
  description = "(optional) - Whether to enable email link user authentication."
  type        = bool
  default     = null
}

variable "project" {
  description = "(optional)"
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

