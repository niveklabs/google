module "google_storage_transfer_job" {
  source = "./modules/google/r/google_storage_transfer_job"

  # description - (required) is a type of string
  description = null
  # project - (optional) is a type of string
  project = null
  # status - (optional) is a type of string
  status = null

  schedule = [{
    schedule_end_date = [{
      day   = null
      month = null
      year  = null
    }]
    schedule_start_date = [{
      day   = null
      month = null
      year  = null
    }]
    start_time_of_day = [{
      hours   = null
      minutes = null
      nanos   = null
      seconds = null
    }]
  }]

  transfer_spec = [{
    aws_s3_data_source = [{
      aws_access_key = [{
        access_key_id     = null
        secret_access_key = null
      }]
      bucket_name = null
    }]
    gcs_data_sink = [{
      bucket_name = null
    }]
    gcs_data_source = [{
      bucket_name = null
    }]
    http_data_source = [{
      list_url = null
    }]
    object_conditions = [{
      exclude_prefixes                         = []
      include_prefixes                         = []
      max_time_elapsed_since_last_modification = null
      min_time_elapsed_since_last_modification = null
    }]
    transfer_options = [{
      delete_objects_from_source_after_transfer  = null
      delete_objects_unique_in_sink              = null
      overwrite_objects_already_existing_in_sink = null
    }]
  }]
}
