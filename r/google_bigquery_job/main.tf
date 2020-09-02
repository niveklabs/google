terraform {
  required_providers {
    google = ">= 3.37.0"
  }
}

resource "google_bigquery_job" "this" {
  job_id         = var.job_id
  job_timeout_ms = var.job_timeout_ms
  labels         = var.labels
  location       = var.location
  project        = var.project

  dynamic "copy" {
    for_each = var.copy
    content {
      create_disposition = copy.value["create_disposition"]
      write_disposition  = copy.value["write_disposition"]

      dynamic "destination_encryption_configuration" {
        for_each = copy.value.destination_encryption_configuration
        content {
          kms_key_name = destination_encryption_configuration.value["kms_key_name"]
        }
      }

      dynamic "destination_table" {
        for_each = copy.value.destination_table
        content {
          dataset_id = destination_table.value["dataset_id"]
          project_id = destination_table.value["project_id"]
          table_id   = destination_table.value["table_id"]
        }
      }

      dynamic "source_tables" {
        for_each = copy.value.source_tables
        content {
          dataset_id = source_tables.value["dataset_id"]
          project_id = source_tables.value["project_id"]
          table_id   = source_tables.value["table_id"]
        }
      }

    }
  }

  dynamic "extract" {
    for_each = var.extract
    content {
      compression            = extract.value["compression"]
      destination_format     = extract.value["destination_format"]
      destination_uris       = extract.value["destination_uris"]
      field_delimiter        = extract.value["field_delimiter"]
      print_header           = extract.value["print_header"]
      use_avro_logical_types = extract.value["use_avro_logical_types"]

      dynamic "source_model" {
        for_each = extract.value.source_model
        content {
          dataset_id = source_model.value["dataset_id"]
          model_id   = source_model.value["model_id"]
          project_id = source_model.value["project_id"]
        }
      }

      dynamic "source_table" {
        for_each = extract.value.source_table
        content {
          dataset_id = source_table.value["dataset_id"]
          project_id = source_table.value["project_id"]
          table_id   = source_table.value["table_id"]
        }
      }

    }
  }

  dynamic "load" {
    for_each = var.load
    content {
      allow_jagged_rows     = load.value["allow_jagged_rows"]
      allow_quoted_newlines = load.value["allow_quoted_newlines"]
      autodetect            = load.value["autodetect"]
      create_disposition    = load.value["create_disposition"]
      encoding              = load.value["encoding"]
      field_delimiter       = load.value["field_delimiter"]
      ignore_unknown_values = load.value["ignore_unknown_values"]
      max_bad_records       = load.value["max_bad_records"]
      null_marker           = load.value["null_marker"]
      projection_fields     = load.value["projection_fields"]
      quote                 = load.value["quote"]
      schema_update_options = load.value["schema_update_options"]
      skip_leading_rows     = load.value["skip_leading_rows"]
      source_format         = load.value["source_format"]
      source_uris           = load.value["source_uris"]
      write_disposition     = load.value["write_disposition"]

      dynamic "destination_encryption_configuration" {
        for_each = load.value.destination_encryption_configuration
        content {
          kms_key_name = destination_encryption_configuration.value["kms_key_name"]
        }
      }

      dynamic "destination_table" {
        for_each = load.value.destination_table
        content {
          dataset_id = destination_table.value["dataset_id"]
          project_id = destination_table.value["project_id"]
          table_id   = destination_table.value["table_id"]
        }
      }

      dynamic "time_partitioning" {
        for_each = load.value.time_partitioning
        content {
          expiration_ms = time_partitioning.value["expiration_ms"]
          field         = time_partitioning.value["field"]
          type          = time_partitioning.value["type"]
        }
      }

    }
  }

  dynamic "query" {
    for_each = var.query
    content {
      allow_large_results   = query.value["allow_large_results"]
      create_disposition    = query.value["create_disposition"]
      flatten_results       = query.value["flatten_results"]
      maximum_billing_tier  = query.value["maximum_billing_tier"]
      maximum_bytes_billed  = query.value["maximum_bytes_billed"]
      parameter_mode        = query.value["parameter_mode"]
      priority              = query.value["priority"]
      query                 = query.value["query"]
      schema_update_options = query.value["schema_update_options"]
      use_legacy_sql        = query.value["use_legacy_sql"]
      use_query_cache       = query.value["use_query_cache"]
      write_disposition     = query.value["write_disposition"]

      dynamic "default_dataset" {
        for_each = query.value.default_dataset
        content {
          dataset_id = default_dataset.value["dataset_id"]
          project_id = default_dataset.value["project_id"]
        }
      }

      dynamic "destination_encryption_configuration" {
        for_each = query.value.destination_encryption_configuration
        content {
          kms_key_name = destination_encryption_configuration.value["kms_key_name"]
        }
      }

      dynamic "destination_table" {
        for_each = query.value.destination_table
        content {
          dataset_id = destination_table.value["dataset_id"]
          project_id = destination_table.value["project_id"]
          table_id   = destination_table.value["table_id"]
        }
      }

      dynamic "script_options" {
        for_each = query.value.script_options
        content {
          key_result_statement  = script_options.value["key_result_statement"]
          statement_byte_budget = script_options.value["statement_byte_budget"]
          statement_timeout_ms  = script_options.value["statement_timeout_ms"]
        }
      }

      dynamic "user_defined_function_resources" {
        for_each = query.value.user_defined_function_resources
        content {
          inline_code  = user_defined_function_resources.value["inline_code"]
          resource_uri = user_defined_function_resources.value["resource_uri"]
        }
      }

    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

