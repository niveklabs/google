variable "column" {
  description = "(optional) - Resources like Entry can have schemas associated with them. This scope allows users to attach tags to an\nindividual column based on that schema.\n\nFor attaching a tag to a nested column, use '.' to separate the column names. Example:\n'outer_column.inner_column'"
  type        = string
  default     = null
}

variable "parent" {
  description = "(optional) - The name of the parent this tag is attached to. This can be the name of an entry or an entry group. If an entry group, the tag will be attached to\nall entries in that group."
  type        = string
  default     = null
}

variable "template" {
  description = "(required) - The resource name of the tag template that this tag uses. Example:\nprojects/{project_id}/locations/{location}/tagTemplates/{tagTemplateId}\nThis field cannot be modified after creation."
  type        = string
}

variable "fields" {
  description = "nested mode: NestingSet, min items: 1, max items: 0"
  type = set(object(
    {
      bool_value      = bool
      display_name    = string
      double_value    = number
      enum_value      = string
      field_name      = string
      order           = number
      string_value    = string
      timestamp_value = string
    }
  ))
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

