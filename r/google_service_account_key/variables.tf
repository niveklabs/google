variable "key_algorithm" {
  description = "(optional) - The algorithm used to generate the key, used only on create. KEY_ALG_RSA_2048 is the default algorithm. Valid values are: \"KEY_ALG_RSA_1024\", \"KEY_ALG_RSA_2048\"."
  type        = string
  default     = null
}

variable "pgp_key" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "private_key_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "public_key_data" {
  description = "(optional) - A field that allows clients to upload their own public key. If set, use this public key data to create a service account key for given service account. Please note, the expected format for this field is a base64 encoded X509_PEM."
  type        = string
  default     = null
}

variable "public_key_type" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "service_account_id" {
  description = "(required) - The ID of the parent service account of the key. This can be a string in the format {ACCOUNT} or projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}, where {ACCOUNT} is the email address or unique id of the service account. If the {ACCOUNT} syntax is used, the project will be inferred from the account."
  type        = string
}

