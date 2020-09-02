module "google_project_usage_export_bucket" {
  source = "./modules/google/r/google_project_usage_export_bucket"

  # bucket_name - (required) is a type of string
  bucket_name = null
  # prefix - (optional) is a type of string
  prefix = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
  }]
}
