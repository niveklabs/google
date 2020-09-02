module "google_compute_vpn_gateway" {
  source = "./modules/google/d/google_compute_vpn_gateway"

  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
}
