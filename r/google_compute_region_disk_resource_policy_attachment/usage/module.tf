module "google_compute_region_disk_resource_policy_attachment" {
  source = "./modules/google/r/google_compute_region_disk_resource_policy_attachment"

  disk    = null
  name    = null
  project = null
  region  = null

  timeouts = [{
    create = null
    delete = null
  }]
}
