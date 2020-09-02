module "google_compute_router" {
  source = "./modules/google/d/google_compute_router"

  # name - (required) is a type of string
  name = null
  # network - (required) is a type of string
  network = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
}
