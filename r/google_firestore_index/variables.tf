variable "collection" {
  description = "(required) - The collection being indexed."
  type        = string
}

variable "database" {
  description = "(optional) - The Firestore database id. Defaults to '\"(default)\"'."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "query_scope" {
  description = "(optional) - The scope at which a query is run. One of '\"COLLECTION\"' or\n'\"COLLECTION_GROUP\"'. Defaults to '\"COLLECTION\"'."
  type        = string
  default     = null
}

variable "fields" {
  description = "nested mode: NestingList, min items: 2, max items: 0"
  type = set(object(
    {
      array_config = string
      field_path   = string
      order        = string
    }
  ))
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

