module "google_logging_billing_account_bucket_config" {
  source = "./modules/google/r/google_logging_billing_account_bucket_config"

  # billing_account - (required) is a type of string
  billing_account = null
  # bucket_id - (required) is a type of string
  bucket_id = null
  # description - (optional) is a type of string
  description = null
  # location - (required) is a type of string
  location = null
  # retention_days - (optional) is a type of number
  retention_days = null
}
