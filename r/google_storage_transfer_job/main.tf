terraform {
  required_providers {
    google = ">= 3.12.0"
  }
}

resource "google_storage_transfer_job" "this" {
  description = var.description
  project     = var.project
  status      = var.status

  dynamic "schedule" {
    for_each = var.schedule
    content {

      dynamic "schedule_end_date" {
        for_each = schedule.value.schedule_end_date
        content {
          day   = schedule_end_date.value["day"]
          month = schedule_end_date.value["month"]
          year  = schedule_end_date.value["year"]
        }
      }

      dynamic "schedule_start_date" {
        for_each = schedule.value.schedule_start_date
        content {
          day   = schedule_start_date.value["day"]
          month = schedule_start_date.value["month"]
          year  = schedule_start_date.value["year"]
        }
      }

      dynamic "start_time_of_day" {
        for_each = schedule.value.start_time_of_day
        content {
          hours   = start_time_of_day.value["hours"]
          minutes = start_time_of_day.value["minutes"]
          nanos   = start_time_of_day.value["nanos"]
          seconds = start_time_of_day.value["seconds"]
        }
      }

    }
  }

  dynamic "transfer_spec" {
    for_each = var.transfer_spec
    content {

      dynamic "aws_s3_data_source" {
        for_each = transfer_spec.value.aws_s3_data_source
        content {
          bucket_name = aws_s3_data_source.value["bucket_name"]

          dynamic "aws_access_key" {
            for_each = aws_s3_data_source.value.aws_access_key
            content {
              access_key_id     = aws_access_key.value["access_key_id"]
              secret_access_key = aws_access_key.value["secret_access_key"]
            }
          }

        }
      }

      dynamic "gcs_data_sink" {
        for_each = transfer_spec.value.gcs_data_sink
        content {
          bucket_name = gcs_data_sink.value["bucket_name"]
        }
      }

      dynamic "gcs_data_source" {
        for_each = transfer_spec.value.gcs_data_source
        content {
          bucket_name = gcs_data_source.value["bucket_name"]
        }
      }

      dynamic "http_data_source" {
        for_each = transfer_spec.value.http_data_source
        content {
          list_url = http_data_source.value["list_url"]
        }
      }

      dynamic "object_conditions" {
        for_each = transfer_spec.value.object_conditions
        content {
          exclude_prefixes                         = object_conditions.value["exclude_prefixes"]
          include_prefixes                         = object_conditions.value["include_prefixes"]
          max_time_elapsed_since_last_modification = object_conditions.value["max_time_elapsed_since_last_modification"]
          min_time_elapsed_since_last_modification = object_conditions.value["min_time_elapsed_since_last_modification"]
        }
      }

      dynamic "transfer_options" {
        for_each = transfer_spec.value.transfer_options
        content {
          delete_objects_from_source_after_transfer  = transfer_options.value["delete_objects_from_source_after_transfer"]
          delete_objects_unique_in_sink              = transfer_options.value["delete_objects_unique_in_sink"]
          overwrite_objects_already_existing_in_sink = transfer_options.value["overwrite_objects_already_existing_in_sink"]
        }
      }

    }
  }

}

