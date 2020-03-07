variable "display_name" {
  description = "(required) - A user-assigned name for this group, used only for display\npurposes."
  type        = string
}

variable "filter" {
  description = "(required) - The filter used to determine which monitored resources\nbelong to this group."
  type        = string
}

variable "is_cluster" {
  description = "(optional) - If true, the members of this group are considered to be a\ncluster. The system can perform additional analysis on\ngroups that are clusters."
  type        = bool
  default     = null
}

variable "parent_name" {
  description = "(optional) - The name of the group's parent, if it has one. The format is\n\"projects/{project_id_or_number}/groups/{group_id}\". For\ngroups with no parent, parentName is the empty string, \"\"."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
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

