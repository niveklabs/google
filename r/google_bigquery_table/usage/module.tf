module "google_bigquery_table" {
  source = "./modules/google/r/google_bigquery_table"

  # clustering - (optional) is a type of list of string
  clustering = []
  # dataset_id - (required) is a type of string
  dataset_id = null
  # description - (optional) is a type of string
  description = null
  # expiration_time - (optional) is a type of number
  expiration_time = null
  # friendly_name - (optional) is a type of string
  friendly_name = null
  # labels - (optional) is a type of map of string
  labels = {}
  # project - (optional) is a type of string
  project = null
  # schema - (optional) is a type of string
  schema = null
  # table_id - (required) is a type of string
  table_id = null

  encryption_configuration = [{
    kms_key_name = null
  }]

  external_data_configuration = [{
    autodetect  = null
    compression = null
    csv_options = [{
      allow_jagged_rows     = null
      allow_quoted_newlines = null
      encoding              = null
      field_delimiter       = null
      quote                 = null
      skip_leading_rows     = null
    }]
    google_sheets_options = [{
      range             = null
      skip_leading_rows = null
    }]
    ignore_unknown_values = null
    max_bad_records       = null
    source_format         = null
    source_uris           = []
  }]

  time_partitioning = [{
    expiration_ms            = null
    field                    = null
    require_partition_filter = null
    type                     = null
  }]

  view = [{
    query          = null
    use_legacy_sql = null
  }]
}
