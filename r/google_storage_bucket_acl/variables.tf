variable "bucket" {
  description = "(required) - The name of the bucket it applies to."
  type        = string
}

variable "default_acl" {
  description = "(optional) - Configure this ACL to be the default ACL."
  type        = string
  default     = null
}

variable "predefined_acl" {
  description = "(optional) - The canned GCS ACL to apply. Must be set if role_entity is not."
  type        = string
  default     = null
}

variable "role_entity" {
  description = "(optional) - List of role/entity pairs in the form ROLE:entity. See GCS Bucket ACL documentation  for more details. Must be set if predefined_acl is not."
  type        = list(string)
  default     = null
}

