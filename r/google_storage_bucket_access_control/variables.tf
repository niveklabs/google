variable "bucket" {
  description = "(required) - The name of the bucket."
  type        = string
}

variable "entity" {
  description = "(required) - The entity holding the permission, in one of the following forms:\n  user-userId\n  user-email\n  group-groupId\n  group-email\n  domain-domain\n  project-team-projectId\n  allUsers\n  allAuthenticatedUsers\nExamples:\n  The user liz@example.com would be user-liz@example.com.\n  The group example@googlegroups.com would be\n  group-example@googlegroups.com.\n  To refer to all members of the Google Apps for Business domain\n  example.com, the entity would be domain-example.com."
  type        = string
}

variable "role" {
  description = "(optional) - The access permission for the entity."
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

