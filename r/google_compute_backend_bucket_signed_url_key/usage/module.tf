module "google_compute_backend_bucket_signed_url_key" {
  source = "./modules/google/r/google_compute_backend_bucket_signed_url_key"

  # backend_bucket - (required) is a type of string
  backend_bucket = null
  # key_value - (required) is a type of string
  key_value = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
  }]
}
