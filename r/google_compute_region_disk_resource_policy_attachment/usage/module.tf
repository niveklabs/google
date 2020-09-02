module "google_compute_region_disk_resource_policy_attachment" {
  source = "./modules/google/r/google_compute_region_disk_resource_policy_attachment"

  # disk - (required) is a type of string
  disk = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null

  timeouts = [{
    create = null
    delete = null
  }]
}
