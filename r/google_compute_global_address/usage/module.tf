module "google_compute_global_address" {
  source = "./modules/google/r/google_compute_global_address"

  # address - (optional) is a type of string
  address = null
  # address_type - (optional) is a type of string
  address_type = null
  # description - (optional) is a type of string
  description = null
  # ip_version - (optional) is a type of string
  ip_version = null
  # name - (required) is a type of string
  name = null
  # network - (optional) is a type of string
  network = null
  # prefix_length - (optional) is a type of number
  prefix_length = null
  # project - (optional) is a type of string
  project = null
  # purpose - (optional) is a type of string
  purpose = null

  timeouts = [{
    create = null
    delete = null
  }]
}
