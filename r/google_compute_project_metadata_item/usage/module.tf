module "google_compute_project_metadata_item" {
  source = "./modules/google/r/google_compute_project_metadata_item"

  # key - (required) is a type of string
  key = null
  # project - (optional) is a type of string
  project = null
  # value - (required) is a type of string
  value = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
