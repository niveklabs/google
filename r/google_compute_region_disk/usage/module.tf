module "google_compute_region_disk" {
  source = "./google/r/google_compute_region_disk"

  description               = null
  labels                    = {}
  name                      = null
  physical_block_size_bytes = null
  project                   = null
  region                    = null
  replica_zones             = []
  size                      = null
  snapshot                  = null
  type                      = null

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
