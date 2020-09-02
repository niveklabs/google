module "google_compute_attached_disk" {
  source = "./modules/google/r/google_compute_attached_disk"

  # device_name - (optional) is a type of string
  device_name = null
  # disk - (required) is a type of string
  disk = null
  # instance - (required) is a type of string
  instance = null
  # mode - (optional) is a type of string
  mode = null
  # project - (optional) is a type of string
  project = null
  # zone - (optional) is a type of string
  zone = null

  timeouts = [{
    create = null
    delete = null
  }]
}
