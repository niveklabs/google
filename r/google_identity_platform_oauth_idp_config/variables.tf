variable "client_id" {
  description = "(required) - The client id of an OAuth client."
  type        = string
}

variable "client_secret" {
  description = "(optional) - The client secret of the OAuth client, to enable OIDC code flow."
  type        = string
  default     = null
}

variable "display_name" {
  description = "(optional) - Human friendly display name."
  type        = string
  default     = null
}

variable "enabled" {
  description = "(optional) - If this config allows users to sign in with the provider."
  type        = bool
  default     = null
}

variable "issuer" {
  description = "(required) - For OIDC Idps, the issuer identifier."
  type        = string
}

variable "name" {
  description = "(required) - The name of the OauthIdpConfig. Must start with 'oidc.'."
  type        = string
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

