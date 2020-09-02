module "google_compute_address" {
  source = "./modules/google/r/google_compute_address"

  # address - (optional) is a type of string
  address = null
  # address_type - (optional) is a type of string
  address_type = null
  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # network_tier - (optional) is a type of string
  network_tier = null
  # project - (optional) is a type of string
  project = null
  # purpose - (optional) is a type of string
  purpose = null
  # region - (optional) is a type of string
  region = null
  # subnetwork - (optional) is a type of string
  subnetwork = null

  timeouts = [{
    create = null
    delete = null
  }]
}
