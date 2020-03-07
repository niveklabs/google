variable "origin" {
  description = "(required) - A stable, user-visible/meaningful string identifying the origin\nof the Lien, intended to be inspected programmatically. Maximum length of\n200 characters."
  type        = string
}

variable "parent" {
  description = "(required) - A reference to the resource this Lien is attached to.\nThe server will validate the parent against those for which Liens are supported.\nSince a variety of objects can have Liens against them, you must provide the type\nprefix (e.g. \"projects/my-project-name\")."
  type        = string
}

variable "reason" {
  description = "(required) - Concise user-visible strings indicating why an action cannot be performed\non a resource. Maximum length of 200 characters."
  type        = string
}

variable "restrictions" {
  description = "(required) - The types of operations which should be blocked as a result of this Lien.\nEach value should correspond to an IAM permission. The server will validate\nthe permissions against those for which Liens are supported.  An empty\nlist is meaningless and will be rejected.\ne.g. ['resourcemanager.projects.delete']"
  type        = list(string)
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

