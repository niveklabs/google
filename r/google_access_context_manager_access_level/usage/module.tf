module "google_access_context_manager_access_level" {
  source = "./modules/google/r/google_access_context_manager_access_level"

  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # parent - (required) is a type of string
  parent = null
  # title - (required) is a type of string
  title = null

  basic = [{
    combining_function = null
    conditions = [{
      device_policy = [{
        allowed_device_management_levels = []
        allowed_encryption_statuses      = []
        os_constraints = [{
          minimum_version = null
          os_type         = null
        }]
        require_admin_approval = null
        require_corp_owned     = null
        require_screen_lock    = null
      }]
      ip_subnetworks         = []
      members                = []
      negate                 = null
      regions                = []
      required_access_levels = []
    }]
  }]

  custom = [{
    expr = [{
      description = null
      expression  = null
      location    = null
      title       = null
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
