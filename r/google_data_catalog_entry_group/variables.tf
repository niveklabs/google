variable "description" {
  description = "(optional) - Entry group description, which can consist of several sentences or paragraphs that describe entry group contents."
  type        = string
  default     = null
}

variable "display_name" {
  description = "(optional) - A short name to identify the entry group, for example, \"analytics data - jan 2011\"."
  type        = string
  default     = null
}

variable "entry_group_id" {
  description = "(required) - The id of the entry group to create. The id must begin with a letter or underscore,\ncontain only English letters, numbers and underscores, and be at most 64 characters."
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "region" {
  description = "(optional) - EntryGroup location region."
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

