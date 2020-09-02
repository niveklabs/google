module "google_compute_regions" {
  source = "./modules/google/d/google_compute_regions"

  # project - (optional) is a type of string
  project = null
  # status - (optional) is a type of string
  status = null
}
