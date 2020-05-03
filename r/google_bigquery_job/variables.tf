variable "job_id" {
  description = "(required) - The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters."
  type        = string
}

variable "job_timeout_ms" {
  description = "(optional) - Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job."
  type        = string
  default     = null
}

variable "labels" {
  description = "(optional) - The labels associated with this job. You can use these to organize and group your jobs."
  type        = map(string)
  default     = null
}

variable "location" {
  description = "(optional) - The geographic location of the job. The default value is US."
  type        = string
  default     = null
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "copy" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      create_disposition = string
      destination_encryption_configuration = list(object(
        {
          kms_key_name = string
        }
      ))
      destination_table = list(object(
        {
          dataset_id = string
          project_id = string
          table_id   = string
        }
      ))
      source_tables = list(object(
        {
          dataset_id = string
          project_id = string
          table_id   = string
        }
      ))
      write_disposition = string
    }
  ))
  default = []
}

variable "extract" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      compression        = string
      destination_format = string
      destination_uris   = list(string)
      field_delimiter    = string
      print_header       = bool
      source_model = list(object(
        {
          dataset_id = string
          model_id   = string
          project_id = string
        }
      ))
      source_table = list(object(
        {
          dataset_id = string
          project_id = string
          table_id   = string
        }
      ))
      use_avro_logical_types = bool
    }
  ))
  default = []
}

variable "load" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      allow_jagged_rows     = bool
      allow_quoted_newlines = bool
      autodetect            = bool
      create_disposition    = string
      destination_encryption_configuration = list(object(
        {
          kms_key_name = string
        }
      ))
      destination_table = list(object(
        {
          dataset_id = string
          project_id = string
          table_id   = string
        }
      ))
      encoding              = string
      field_delimiter       = string
      ignore_unknown_values = bool
      max_bad_records       = number
      null_marker           = string
      projection_fields     = list(string)
      quote                 = string
      schema_update_options = list(string)
      skip_leading_rows     = number
      source_format         = string
      source_uris           = list(string)
      time_partitioning = list(object(
        {
          expiration_ms = string
          field         = string
          type          = string
        }
      ))
      write_disposition = string
    }
  ))
  default = []
}

variable "query" {
  description = "nested mode: NestingList, min items: 0, max items: 1"
  type = set(object(
    {
      allow_large_results = bool
      create_disposition  = string
      default_dataset = list(object(
        {
          dataset_id = string
          project_id = string
        }
      ))
      destination_encryption_configuration = list(object(
        {
          kms_key_name = string
        }
      ))
      destination_table = list(object(
        {
          dataset_id = string
          project_id = string
          table_id   = string
        }
      ))
      flatten_results       = bool
      maximum_billing_tier  = number
      maximum_bytes_billed  = string
      parameter_mode        = string
      priority              = string
      query                 = string
      schema_update_options = list(string)
      script_options = list(object(
        {
          key_result_statement  = string
          statement_byte_budget = string
          statement_timeout_ms  = string
        }
      ))
      use_legacy_sql  = bool
      use_query_cache = bool
      user_defined_function_resources = list(object(
        {
          inline_code  = string
          resource_uri = string
        }
      ))
      write_disposition = string
    }
  ))
  default = []
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

