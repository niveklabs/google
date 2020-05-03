module "google_compute_image" {
  source = "./modules/google/r/google_compute_image"

  description  = null
  disk_size_gb = null
  family       = null
  labels       = {}
  licenses     = []
  name         = null
  project      = null
  source_disk  = null

  guest_os_features = [{
    type = null
  }]

  raw_disk = [{
    container_type = null
    sha1           = null
    source         = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
