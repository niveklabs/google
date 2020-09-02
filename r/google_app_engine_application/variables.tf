variable "auth_domain" {
  description = "(optional) - The domain to authenticate users with when using App Engine's User API."
  type        = string
  default     = null
}

variable "database_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "location_id" {
  description = "(required) - The location to serve the app from."
  type        = string
}

variable "project" {
  description = "(optional) - The project ID to create the application under."
  type        = string
  default     = null
}

variable "serving_status" {
  description = "(optional) - The serving status of the app."
  type        = string
  default     = null
}

variable "feature_settings" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      split_health_checks = bool
    }
  ))
  default = []
}

variable "iap" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      enabled                     = bool
      oauth2_client_id            = string
      oauth2_client_secret        = string
      oauth2_client_secret_sha256 = string
    }
  ))
  default = []
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      update = string
    }
  ))
  default = []
}

