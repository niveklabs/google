module "google_filestore_instance" {
  source = "./google/r/google_filestore_instance"

  description = null
  labels      = {}
  name        = null
  project     = null
  tier        = null
  zone        = null

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
