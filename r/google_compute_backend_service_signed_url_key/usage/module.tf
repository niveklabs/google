module "google_compute_backend_service_signed_url_key" {
  source = "./modules/google/r/google_compute_backend_service_signed_url_key"

  backend_service = null
  key_value       = null
  name            = null
  project         = null

  timeouts = [{
    create = null
    delete = null
  }]
}
