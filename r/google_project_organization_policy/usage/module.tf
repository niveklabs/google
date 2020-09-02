module "google_project_organization_policy" {
  source = "./modules/google/r/google_project_organization_policy"

  # constraint - (required) is a type of string
  constraint = null
  # project - (required) is a type of string
  project = null
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
