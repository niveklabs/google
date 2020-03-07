variable "display_name" {
  description = "(required) - Human friendly display name."
  type        = string
}

variable "enabled" {
  description = "(optional) - If this config allows users to sign in with the provider."
  type        = bool
  default     = null
}

variable "name" {
  description = "(required) - The name of the InboundSamlConfig resource. Must start with 'saml.' and can only have alphanumeric characters,\nhyphens, underscores or periods. The part after 'saml.' must also start with a lowercase letter, end with an\nalphanumeric character, and have at least 2 characters."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "tenant" {
  description = "(required) - The name of the tenant where this inbound SAML config resource exists"
  type        = string
}

variable "idp_config" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      idp_certificates = list(object(
        {
          x509_certificate = string
        }
      ))
      idp_entity_id = string
      sign_request  = bool
      sso_url       = string
    }
  ))
}

variable "sp_config" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      callback_uri = string
      sp_certificates = list(object(
        {
          x509_certificate = string
        }
      ))
      sp_entity_id = string
    }
  ))
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

