terraform {
  required_providers {
    google = ">= 3.16.0"
  }
}

resource "google_bigquery_table" "this" {
  clustering      = var.clustering
  dataset_id      = var.dataset_id
  description     = var.description
  expiration_time = var.expiration_time
  friendly_name   = var.friendly_name
  labels          = var.labels
  project         = var.project
  schema          = var.schema
  table_id        = var.table_id

  dynamic "encryption_configuration" {
    for_each = var.encryption_configuration
    content {
      kms_key_name = encryption_configuration.value["kms_key_name"]
    }
  }

  dynamic "external_data_configuration" {
    for_each = var.external_data_configuration
    content {
      autodetect            = external_data_configuration.value["autodetect"]
      compression           = external_data_configuration.value["compression"]
      ignore_unknown_values = external_data_configuration.value["ignore_unknown_values"]
      max_bad_records       = external_data_configuration.value["max_bad_records"]
      source_format         = external_data_configuration.value["source_format"]
      source_uris           = external_data_configuration.value["source_uris"]

      dynamic "csv_options" {
        for_each = external_data_configuration.value.csv_options
        content {
          allow_jagged_rows     = csv_options.value["allow_jagged_rows"]
          allow_quoted_newlines = csv_options.value["allow_quoted_newlines"]
          encoding              = csv_options.value["encoding"]
          field_delimiter       = csv_options.value["field_delimiter"]
          quote                 = csv_options.value["quote"]
          skip_leading_rows     = csv_options.value["skip_leading_rows"]
        }
      }

      dynamic "google_sheets_options" {
        for_each = external_data_configuration.value.google_sheets_options
        content {
          range             = google_sheets_options.value["range"]
          skip_leading_rows = google_sheets_options.value["skip_leading_rows"]
        }
      }

    }
  }

  dynamic "time_partitioning" {
    for_each = var.time_partitioning
    content {
      expiration_ms            = time_partitioning.value["expiration_ms"]
      field                    = time_partitioning.value["field"]
      require_partition_filter = time_partitioning.value["require_partition_filter"]
      type                     = time_partitioning.value["type"]
    }
  }

  dynamic "view" {
    for_each = var.view
    content {
      query          = view.value["query"]
      use_legacy_sql = view.value["use_legacy_sql"]
    }
  }

}

