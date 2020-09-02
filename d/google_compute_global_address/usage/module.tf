module "google_compute_global_address" {
  source = "./modules/google/d/google_compute_global_address"

  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
}
