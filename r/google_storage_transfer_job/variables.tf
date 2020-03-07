variable "description" {
  description = "(required)"
  type        = string
}

variable "project" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "status" {
  description = "(optional)"
  type        = string
  default     = null
}

variable "schedule" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      schedule_end_date = list(object(
        {
          day   = number
          month = number
          year  = number
        }
      ))
      schedule_start_date = list(object(
        {
          day   = number
          month = number
          year  = number
        }
      ))
      start_time_of_day = list(object(
        {
          hours   = number
          minutes = number
          nanos   = number
          seconds = number
        }
      ))
    }
  ))
}

variable "transfer_spec" {
  description = "nested mode: NestingList, min items: 1, max items: 1"
  type = set(object(
    {
      aws_s3_data_source = list(object(
        {
          aws_access_key = list(object(
            {
              access_key_id     = string
              secret_access_key = string
            }
          ))
          bucket_name = string
        }
      ))
      gcs_data_sink = list(object(
        {
          bucket_name = string
        }
      ))
      gcs_data_source = list(object(
        {
          bucket_name = string
        }
      ))
      http_data_source = list(object(
        {
          list_url = string
        }
      ))
      object_conditions = list(object(
        {
          exclude_prefixes                         = list(string)
          include_prefixes                         = list(string)
          max_time_elapsed_since_last_modification = string
          min_time_elapsed_since_last_modification = string
        }
      ))
      transfer_options = list(object(
        {
          delete_objects_from_source_after_transfer  = bool
          delete_objects_unique_in_sink              = bool
          overwrite_objects_already_existing_in_sink = bool
        }
      ))
    }
  ))
}

