module "google_compute_backend_bucket" {
  source = "./modules/google/d/google_compute_backend_bucket"

  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
}
