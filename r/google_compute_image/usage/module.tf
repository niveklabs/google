module "google_compute_image" {
  source = "./modules/google/r/google_compute_image"

  # description - (optional) is a type of string
  description = null
  # disk_size_gb - (optional) is a type of number
  disk_size_gb = null
  # family - (optional) is a type of string
  family = null
  # labels - (optional) is a type of map of string
  labels = {}
  # licenses - (optional) is a type of list of string
  licenses = []
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # source_disk - (optional) is a type of string
  source_disk = null
  # source_image - (optional) is a type of string
  source_image = null
  # source_snapshot - (optional) is a type of string
  source_snapshot = null

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
