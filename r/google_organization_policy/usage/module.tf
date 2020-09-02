module "google_organization_policy" {
  source = "./modules/google/r/google_organization_policy"

  # constraint - (required) is a type of string
  constraint = null
  # org_id - (required) is a type of string
  org_id = null
  # version - (optional) is a type of number
  version = null

  boolean_policy = [{
    enforced = null
  }]

  list_policy = [{
    allow = [{
      all    = null
      values = []
    }]
    deny = [{
      all    = null
      values = []
    }]
    inherit_from_parent = null
    suggested_value     = null
  }]

  restore_policy = [{
    default = null
  }]

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
