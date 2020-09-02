module "google_logging_folder_bucket_config" {
  source = "./modules/google/r/google_logging_folder_bucket_config"

  # bucket_id - (required) is a type of string
  bucket_id = null
  # description - (optional) is a type of string
  description = null
  # folder - (required) is a type of string
  folder = null
  # location - (required) is a type of string
  location = null
  # retention_days - (optional) is a type of number
  retention_days = null
}
