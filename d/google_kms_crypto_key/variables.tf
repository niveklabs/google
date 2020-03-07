variable "key_ring" {
  description = "(required) - The KeyRing that this key belongs to.\nFormat: ''projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}''."
  type        = string
}

variable "name" {
  description = "(required) - The resource name for the CryptoKey."
  type        = string
}

