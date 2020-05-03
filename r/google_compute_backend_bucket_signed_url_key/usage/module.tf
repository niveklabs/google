module "google_compute_backend_bucket_signed_url_key" {
  source = "./modules/google/r/google_compute_backend_bucket_signed_url_key"

  backend_bucket = null
  key_value      = null
  name           = null
  project        = null

  timeouts = [{
    create = null
    delete = null
  }]
}
