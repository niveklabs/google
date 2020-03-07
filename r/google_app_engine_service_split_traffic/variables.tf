variable "migrate_traffic" {
  description = "(optional) - If set to true traffic will be migrated to this version."
  type        = bool
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "service" {
  description = "(required) - The name of the service these settings apply to."
  type        = string
}

variable "split" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      allocations = map(string)
      shard_by    = string
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

