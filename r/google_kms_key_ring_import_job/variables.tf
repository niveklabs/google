variable "import_job_id" {
  description = "(required) - It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63}"
  type        = string
}

variable "import_method" {
  description = "(required) - The wrapping method to be used for incoming key material. Possible values: [\"RSA_OAEP_3072_SHA1_AES_256\", \"RSA_OAEP_4096_SHA1_AES_256\"]"
  type        = string
}

variable "key_ring" {
  description = "(required) - The KeyRing that this import job belongs to.\nFormat: ''projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}''."
  type        = string
}

variable "protection_level" {
  description = "(required) - The protection level of the ImportJob. This must match the protectionLevel of the\nversionTemplate on the CryptoKey you attempt to import into. Possible values: [\"SOFTWARE\", \"HSM\", \"EXTERNAL\"]"
  type        = string
}

variable "timeouts" {
  description = "nested mode: NestingSingle, min items: 0, max items: 0"
  type = set(object(
    {
      create = string
      delete = string
    }
  ))
  default = []
}

