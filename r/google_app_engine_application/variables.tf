variable "auth_domain" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "location_id" {
  description = "(required)"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "serving_status" {
  description = "(optional)"
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
      oauth2_client_id            = string
      oauth2_client_secret        = string
      oauth2_client_secret_sha256 = string
    }
  ))
  default = []
}

