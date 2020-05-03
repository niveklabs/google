module "google_access_context_manager_service_perimeter" {
  source = "./modules/google/r/google_access_context_manager_service_perimeter"

  description    = null
  name           = null
  parent         = null
  perimeter_type = null
  title          = null

  status = [{
    access_levels       = []
    resources           = []
    restricted_services = []
    vpc_accessible_services = [{
      allowed_services   = []
      enable_restriction = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
