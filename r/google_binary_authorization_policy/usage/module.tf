module "google_binary_authorization_policy" {
  source = "./google/r/google_binary_authorization_policy"

  description                   = null
  global_policy_evaluation_mode = null
  project                       = null

  admission_whitelist_patterns = [{
    name_pattern = null
  }]

  cluster_admission_rules = [{
    cluster                 = null
    enforcement_mode        = null
    evaluation_mode         = null
    require_attestations_by = []
  }]

  default_admission_rule = [{
    enforcement_mode        = null
    evaluation_mode         = null
    require_attestations_by = []
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
