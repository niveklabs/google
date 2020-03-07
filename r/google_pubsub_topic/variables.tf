variable "kms_key_name" {
  description = "(optional) - The resource name of the Cloud KMS CryptoKey to be used to protect access\nto messages published on this topic. Your project's PubSub service account\n('service-{{PROJECT_NUMBER}}@gcp-sa-pubsub.iam.gserviceaccount.com') must have\n'roles/cloudkms.cryptoKeyEncrypterDecrypter' to use this feature.\n\nThe expected format is 'projects/*/locations/*/keyRings/*/cryptoKeys/*'"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - A set of key/value label pairs to assign to this Topic."
  type        = map(string)
  default     = null
}

variable "name" {
  description = "(required) - Name of the topic."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "message_storage_policy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      allowed_persistence_regions = list(string)
    }
  ))
  default = []
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

