module "google_access_context_manager_access_level" {
  source = "./google/r/google_access_context_manager_access_level"

  description = null
  name        = null
  parent      = null
  title       = null

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
      required_access_levels = []
    }]
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
