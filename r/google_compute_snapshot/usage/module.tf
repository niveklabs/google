module "google_compute_snapshot" {
  source = "./google/r/google_compute_snapshot"

  description = null
  labels      = {}
  name        = null
  project     = null
  source_disk = null
  zone        = null

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
