module "google_bigquery_job" {
  source = "./modules/google/r/google_bigquery_job"

  job_id         = null
  job_timeout_ms = null
  labels         = {}
  location       = null
  project        = null

  copy = [{
    create_disposition = null
    destination_encryption_configuration = [{
      kms_key_name = null
    }]
    destination_table = [{
      dataset_id = null
      project_id = null
      table_id   = null
    }]
    source_tables = [{
      dataset_id = null
      project_id = null
      table_id   = null
    }]
    write_disposition = null
  }]

  extract = [{
    compression        = null
    destination_format = null
    destination_uris   = []
    field_delimiter    = null
    print_header       = null
    source_model = [{
      dataset_id = null
      model_id   = null
      project_id = null
    }]
    source_table = [{
      dataset_id = null
      project_id = null
      table_id   = null
    }]
    use_avro_logical_types = null
  }]

  load = [{
    allow_jagged_rows     = null
    allow_quoted_newlines = null
    autodetect            = null
    create_disposition    = null
    destination_encryption_configuration = [{
      kms_key_name = null
    }]
    destination_table = [{
      dataset_id = null
      project_id = null
      table_id   = null
    }]
    encoding              = null
    field_delimiter       = null
    ignore_unknown_values = null
    max_bad_records       = null
    null_marker           = null
    projection_fields     = []
    quote                 = null
    schema_update_options = []
    skip_leading_rows     = null
    source_format         = null
    source_uris           = []
    time_partitioning = [{
      expiration_ms = null
      field         = null
      type          = null
    }]
    write_disposition = null
  }]

  query = [{
    allow_large_results = null
    create_disposition  = null
    default_dataset = [{
      dataset_id = null
      project_id = null
    }]
    destination_encryption_configuration = [{
      kms_key_name = null
    }]
    destination_table = [{
      dataset_id = null
      project_id = null
      table_id   = null
    }]
    flatten_results       = null
    maximum_billing_tier  = null
    maximum_bytes_billed  = null
    parameter_mode        = null
    priority              = null
    query                 = null
    schema_update_options = []
    script_options = [{
      key_result_statement  = null
      statement_byte_budget = null
      statement_timeout_ms  = null
    }]
    use_legacy_sql  = null
    use_query_cache = null
    user_defined_function_resources = [{
      inline_code  = null
      resource_uri = null
    }]
    write_disposition = null
  }]

  timeouts = [{
    create = null
    delete = null
  }]
}
