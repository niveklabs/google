variable "billing_account" {
  description = "(required)"
  type        = string
}

variable "destination" {
  description = "(required)"
  type        = string
}

variable "filter" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "name" {
  description = "(required)"
  type        = string
}

variable "bigquery_options" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      use_partitioned_tables = bool
    }
  ))
  default = []
}

