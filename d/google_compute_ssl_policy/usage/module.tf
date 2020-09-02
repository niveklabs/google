module "google_compute_ssl_policy" {
  source = "./modules/google/d/google_compute_ssl_policy"

  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
}
