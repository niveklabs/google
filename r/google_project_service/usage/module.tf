module "google_project_service" {
  source = "./modules/google/r/google_project_service"

  # disable_dependent_services - (optional) is a type of bool
  disable_dependent_services = null
  # disable_on_destroy - (optional) is a type of bool
  disable_on_destroy = null
  # project - (optional) is a type of string
  project = null
  # service - (required) is a type of string
  service = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
