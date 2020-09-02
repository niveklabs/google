module "google_compute_network" {
  source = "./modules/google/d/google_compute_network"

  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
}
