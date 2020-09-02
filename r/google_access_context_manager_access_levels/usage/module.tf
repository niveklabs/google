module "google_access_context_manager_access_levels" {
  source = "./modules/google/r/google_access_context_manager_access_levels"

  # parent - (required) is a type of string
  parent = null

  access_levels = [{
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
    description = null
    name        = null
    title       = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
