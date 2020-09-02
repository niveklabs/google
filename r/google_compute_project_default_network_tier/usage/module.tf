module "google_compute_project_default_network_tier" {
  source = "./modules/google/r/google_compute_project_default_network_tier"

  # network_tier - (required) is a type of string
  network_tier = null
  # project - (optional) is a type of string
  project = null
}
