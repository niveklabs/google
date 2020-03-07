variable "key_ring" {
  description = "(required) - The KeyRing that this key belongs to.\nFormat: ''projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}''."
  type        = string
}

variable "labels" {
  description = "(optional) - Labels with user-defined metadata to apply to this resource."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - The resource name for the CryptoKey."
  type        = string
}

variable "purpose" {
  description = "(optional) - The immutable purpose of this CryptoKey. See the\n[purpose reference](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.cryptoKeys#CryptoKeyPurpose)\nfor possible inputs."
  type        = string
  default     = null
}

variable "rotation_period" {
  description = "(optional) - Every time this period passes, generate a new CryptoKeyVersion and set it as the primary.\nThe first rotation will take place after the specified period. The rotation period has\nthe format of a decimal number with up to 9 fractional digits, followed by the\nletter 's' (seconds). It must be greater than a day (ie, 86400)."
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

variable "version_template" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      algorithm        = string
      protection_level = string
    }
  ))
  default = []
}

