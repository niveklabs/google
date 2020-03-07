module "google_compute_disk_resource_policy_attachment" {
  source = "./google/r/google_compute_disk_resource_policy_attachment"

  disk    = null
  name    = null
  project = null
  zone    = null

  timeouts = [{
    create = null
    delete = null
  }]
}
