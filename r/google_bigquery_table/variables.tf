variable "clustering" {
  description = "(optional)"
  type        = list(string)
  default     = null
}

variable "dataset_id" {
  description = "(required)"
  type        = string
}

variable "description" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "expiration_time" {
  description = "(optional)"
  type        = number
  default     = null
}

variable "friendly_name" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional)"
  type        = map(string)
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "schema" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "table_id" {
  description = "(required)"
  type        = string
}

variable "encryption_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      kms_key_name = string
    }
  ))
  default = []
}

variable "external_data_configuration" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      autodetect  = bool
      compression = string
      csv_options = list(object(
        {
          allow_jagged_rows     = bool
          allow_quoted_newlines = bool
          encoding              = string
          field_delimiter       = string
          quote                 = string
          skip_leading_rows     = number
        }
      ))
      google_sheets_options = list(object(
        {
          range             = string
          skip_leading_rows = number
        }
      ))
      ignore_unknown_values = bool
      max_bad_records       = number
      source_format         = string
      source_uris           = list(string)
    }
  ))
  default = []
}

variable "time_partitioning" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      expiration_ms            = number
      field                    = string
      require_partition_filter = bool
      type                     = string
    }
  ))
  default = []
}

variable "view" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      query          = string
      use_legacy_sql = bool
    }
  ))
  default = []
}

