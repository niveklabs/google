module "google_active_directory_domain" {
  source = "./modules/google/r/google_active_directory_domain"

  # admin - (optional) is a type of string
  admin = null
  # authorized_networks - (optional) is a type of set of string
  authorized_networks = []
  # domain_name - (required) is a type of string
  domain_name = null
  # labels - (optional) is a type of map of string
  labels = {}
  # locations - (required) is a type of list of string
  locations = []
  # project - (optional) is a type of string
  project = null
  # reserved_ip_range - (required) is a type of string
  reserved_ip_range = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
