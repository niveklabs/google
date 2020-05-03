module "google_compute_project_metadata_item" {
  source = "./modules/google/r/google_compute_project_metadata_item"

  key     = null
  project = null
  value   = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
