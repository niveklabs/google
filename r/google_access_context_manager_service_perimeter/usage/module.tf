module "google_access_context_manager_service_perimeter" {
  source = "./modules/google/r/google_access_context_manager_service_perimeter"

  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # parent - (required) is a type of string
  parent = null
  # perimeter_type - (optional) is a type of string
  perimeter_type = null
  # title - (required) is a type of string
  title = null
  # use_explicit_dry_run_spec - (optional) is a type of bool
  use_explicit_dry_run_spec = null

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

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
