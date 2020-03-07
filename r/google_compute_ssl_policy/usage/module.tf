module "google_compute_ssl_policy" {
  source = "./google/r/google_compute_ssl_policy"

  custom_features = []
  description     = null
  min_tls_version = null
  name            = null
  profile         = null
  project         = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
