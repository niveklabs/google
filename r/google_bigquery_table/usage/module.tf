module "google_bigquery_table" {
  source = "./modules/google/r/google_bigquery_table"

  clustering      = []
  dataset_id      = null
  description     = null
  expiration_time = null
  friendly_name   = null
  labels          = {}
  project         = null
  schema          = null
  table_id        = null

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
