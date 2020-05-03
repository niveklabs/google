variable "dataset_id" {
  description = "(required) - A unique ID for this dataset, without the project name. The ID\nmust contain only letters (a-z, A-Z), numbers (0-9), or\nunderscores (_). The maximum length is 1,024 characters."
  type        = string
}

variable "domain" {
  description = "(optional) - A domain to grant access to. Any users signed in with the\ndomain specified will be granted the specified access"
  type        = string
  default     = null
}

variable "group_by_email" {
  description = "(optional) - An email address of a Google Group to grant access to."
  type        = string
  default     = null
}

variable "iam_member" {
  description = "(optional) - Some other type of member that appears in the IAM Policy but isn't a user,\ngroup, domain, or special group. For example: 'allUsers'"
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "role" {
  description = "(optional) - Describes the rights granted to the user specified by the other\nmember of the access object. Primitive, Predefined and custom\nroles are supported. Predefined roles that have equivalent\nprimitive roles are swapped by the API to their Primitive\ncounterparts, and will show a diff post-create. See\n[official docs](https://cloud.google.com/bigquery/docs/access-control)."
  type        = string
  default     = null
}

variable "special_group" {
  description = "(optional) - A special group to grant access to. Possible values include:\n\n\n* 'projectOwners': Owners of the enclosing project.\n\n\n* 'projectReaders': Readers of the enclosing project.\n\n\n* 'projectWriters': Writers of the enclosing project.\n\n\n* 'allAuthenticatedUsers': All authenticated BigQuery users."
  type        = string
  default     = null
}

variable "user_by_email" {
  description = "(optional) - An email address of a user to grant access to. For example:\nfred@example.com"
  type        = string
  default     = null
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

variable "view" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      dataset_id = string
      project_id = string
      table_id   = string
    }
  ))
  default = []
}

