module "google_bigtable_app_profile" {
  source = "./modules/google/r/google_bigtable_app_profile"

  # app_profile_id - (required) is a type of string
  app_profile_id = null
  # description - (optional) is a type of string
  description = null
  # ignore_warnings - (optional) is a type of bool
  ignore_warnings = null
  # instance - (optional) is a type of string
  instance = null
  # multi_cluster_routing_use_any - (optional) is a type of bool
  multi_cluster_routing_use_any = null
  # project - (optional) is a type of string
  project = null

  single_cluster_routing = [{
    allow_transactional_writes = null
    cluster_id                 = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
