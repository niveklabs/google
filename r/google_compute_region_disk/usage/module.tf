module "google_compute_region_disk" {
  source = "./modules/google/r/google_compute_region_disk"

  # description - (optional) is a type of string
  description = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # physical_block_size_bytes - (optional) is a type of number
  physical_block_size_bytes = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # replica_zones - (required) is a type of list of string
  replica_zones = []
  # size - (optional) is a type of number
  size = null
  # snapshot - (optional) is a type of string
  snapshot = null
  # type - (optional) is a type of string
  type = null

  disk_encryption_key = [{
    raw_key = null
    sha256  = null
  }]

  source_snapshot_encryption_key = [{
    raw_key = null
    sha256  = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
