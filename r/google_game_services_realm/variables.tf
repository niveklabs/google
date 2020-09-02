variable "description" {
  description = "(optional) - Human readable description of the realm."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - The labels associated with this realm. Each label is a key-value pair."
  type        = map(string)
  default     = null
}

variable "location" {
  description = "(optional) - Location of the Realm."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "realm_id" {
  description = "(required) - GCP region of the Realm."
  type        = string
}

variable "time_zone" {
  description = "(required) - Required. Time zone where all realm-specific policies are evaluated. The value of\nthis field must be from the IANA time zone database:\nhttps://www.iana.org/time-zones."
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

