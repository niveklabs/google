module "google_project_service" {
  source = "./modules/google/r/google_project_service"

  disable_dependent_services = null
  disable_on_destroy         = null
  project                    = null
  service                    = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
