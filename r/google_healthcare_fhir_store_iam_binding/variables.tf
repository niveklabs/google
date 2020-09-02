variable "fhir_store_id" {
  description = "(required)"
  type        = string
}

variable "members" {
  description = "(required)"
  type        = set(string)
}

variable "role" {
  description = "(required)"
  type        = string
}
