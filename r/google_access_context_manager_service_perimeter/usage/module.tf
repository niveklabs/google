module "google_access_context_manager_service_perimeter" {
  source = "./google/r/google_access_context_manager_service_perimeter"

  description    = null
  name           = null
  parent         = null
  perimeter_type = null
  title          = null

  status = [{
    access_levels       = []
    resources           = []
    restricted_services = []
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
