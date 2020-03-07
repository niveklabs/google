module "google_compute_attached_disk" {
  source = "./google/r/google_compute_attached_disk"

  device_name = null
  disk        = null
  instance    = null
  mode        = null
  project     = null
  zone        = null

  timeouts = [{
    create = null
    delete = null
  }]
}
