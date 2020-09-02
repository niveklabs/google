variable "clustering" {
  description = "(optional) - Specifies column names to use for data clustering. Up to four top-level columns are allowed, and should be specified in descending priority order."
  type        = list(string)
  default     = null
}

variable "dataset_id" {
  description = "(required) - The dataset ID to create the table in. Changing this forces a new resource to be created."
  type        = string
}

variable "description" {
  description = "(optional) - The field description."
  type        = string
  default     = null
}

variable "expiration_time" {
  description = "(optional) - The time when this table expires, in milliseconds since the epoch. If not present, the table will persist indefinitely. Expired tables will be deleted and their storage reclaimed."
  type        = number
  default     = null
}

variable "friendly_name" {
  description = "(optional) - A descriptive name for the table."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - A mapping of labels to assign to the resource."
  type        = map(string)
  default     = null
}

variable "project" {
  description = "(optional) - The ID of the project in which the resource belongs."
  type        = string
  default     = null
}

variable "schema" {
  description = "(optional) - A JSON schema for the table. Schema is required for CSV and JSON formats and is disallowed for Google Cloud Bigtable, Cloud Datastore backups, and Avro formats when using external tables."
  type        = string
  default     = null
}

variable "table_id" {
  description = "(required) - A unique ID for the resource. Changing this forces a new resource to be created."
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
      hive_partitioning_options = list(object(
        {
          mode              = string
          source_uri_prefix = string
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

variable "range_partitioning" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      field = string
      range = list(object(
        {
          end      = number
          interval = number
          start    = number
        }
      ))
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

