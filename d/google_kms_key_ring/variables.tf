variable "location" {
  description = "(required) - The location for the KeyRing.\nA full list of valid locations can be found by running 'gcloud kms locations list'."
  type        = string
}

variable "name" {
  description = "(required) - The resource name for the KeyRing."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

