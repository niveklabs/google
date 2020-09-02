module "google_filestore_instance" {
  source = "./modules/google/r/google_filestore_instance"

  # description - (optional) is a type of string
  description = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # tier - (required) is a type of string
  tier = null
  # zone - (required) is a type of string
  zone = null

  file_shares = [{
    capacity_gb = null
    name        = null
  }]

  networks = [{
    ip_addresses      = []
    modes             = []
    network           = null
    reserved_ip_range = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
