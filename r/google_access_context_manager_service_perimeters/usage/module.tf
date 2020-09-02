module "google_access_context_manager_service_perimeters" {
  source = "./modules/google/r/google_access_context_manager_service_perimeters"

  # parent - (required) is a type of string
  parent = null

  service_perimeters = [{
    create_time    = null
    description    = null
    name           = null
    perimeter_type = null
    spec = [{
      access_levels       = []
      resources           = []
      restricted_services = []
      vpc_accessible_services = [{
        allowed_services   = []
        enable_restriction = null
      }]
    }]
    status = [{
      access_levels       = []
      resources           = []
      restricted_services = []
      vpc_accessible_services = [{
        allowed_services   = []
        enable_restriction = null
      }]
    }]
    title                     = null
    update_time               = null
    use_explicit_dry_run_spec = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
