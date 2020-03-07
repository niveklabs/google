module "google_project_usage_export_bucket" {
  source = "./google/r/google_project_usage_export_bucket"

  bucket_name = null
  prefix      = null
  project     = null
}
