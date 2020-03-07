variable "client_id" {
  description = "(required) - OAuth client ID"
  type        = string
}

variable "client_secret" {
  description = "(required) - OAuth client secret"
  type        = string
}

variable "enabled" {
  description = "(optional) - If this IDP allows the user to sign in"
  type        = bool
  default     = null
}

variable "idp_id" {
  description = "(required) - ID of the IDP. Possible values include:\n\n* 'apple.com'\n\n* 'facebook.com'\n\n* 'gc.apple.com'\n\n* 'github.com'\n\n* 'google.com'\n\n* 'linkedin.com'\n\n* 'microsoft.com'\n\n* 'playgames.google.com'\n\n* 'twitter.com'\n\n* 'yahoo.com'"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tenant" {
  description = "(required) - The name of the tenant where this DefaultSupportedIdpConfig resource exists"
  type        = string
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

