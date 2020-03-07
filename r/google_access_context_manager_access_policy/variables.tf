variable "parent" {
  description = "(required) - The parent of this AccessPolicy in the Cloud Resource Hierarchy.\nFormat: organizations/{organization_id}"
  type        = string
}

variable "title" {
  description = "(required) - Human readable title. Does not affect behavior."
  type        = string
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

