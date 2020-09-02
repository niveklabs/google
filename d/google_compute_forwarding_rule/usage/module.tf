module "google_compute_forwarding_rule" {
  source = "./modules/google/d/google_compute_forwarding_rule"

  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
}
