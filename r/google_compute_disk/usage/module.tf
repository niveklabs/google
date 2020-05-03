module "google_compute_disk" {
  source = "./modules/google/r/google_compute_disk"

  description               = null
  image                     = null
  labels                    = {}
  name                      = null
  physical_block_size_bytes = null
  project                   = null
  size                      = null
  snapshot                  = null
  type                      = null
  zone                      = null

  disk_encryption_key = [{
    kms_key_self_link = null
    raw_key           = null
    sha256            = null
  }]

  source_image_encryption_key = [{
    kms_key_self_link = null
    raw_key           = null
    sha256            = null
  }]

  source_snapshot_encryption_key = [{
    kms_key_self_link = null
    raw_key           = null
    sha256            = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
