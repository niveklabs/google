variable "crypto_key" {
  description = "(required) - The full name of the CryptoKey that will be used to encrypt the provided plaintext.\nFormat: ''projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}/cryptoKeys/{{cryptoKey}}''"
  type        = string
}

variable "plaintext" {
  description = "(required) - The plaintext to be encrypted."
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

