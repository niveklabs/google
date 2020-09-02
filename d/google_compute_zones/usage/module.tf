module "google_compute_zones" {
  source = "./modules/google/d/google_compute_zones"

  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # status - (optional) is a type of string
  status = null
}
