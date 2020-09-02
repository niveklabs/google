module "google_compute_backend_service_signed_url_key" {
  source = "./modules/google/r/google_compute_backend_service_signed_url_key"

  # backend_service - (required) is a type of string
  backend_service = null
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
