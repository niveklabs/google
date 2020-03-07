module "google_organization_policy" {
  source = "./google/r/google_organization_policy"

  constraint = null
  org_id     = null
  version    = null

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
