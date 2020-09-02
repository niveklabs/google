module "google_compute_project_metadata" {
  source = "./modules/google/r/google_compute_project_metadata"

  # metadata - (required) is a type of map of string
  metadata = {}
  # project - (optional) is a type of string
  project = null

  timeouts = [{
    create = null
    delete = null
  }]
}
