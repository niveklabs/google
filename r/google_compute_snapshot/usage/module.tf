module "google_compute_snapshot" {
  source = "./modules/google/r/google_compute_snapshot"

  # description - (optional) is a type of string
  description = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # source_disk - (required) is a type of string
  source_disk = null
  # zone - (optional) is a type of string
  zone = null

  snapshot_encryption_key = [{
    raw_key = null
    sha256  = null
  }]

  source_disk_encryption_key = [{
    raw_key = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
