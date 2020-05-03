module "google_bigtable_app_profile" {
  source = "./modules/google/r/google_bigtable_app_profile"

  app_profile_id                = null
  description                   = null
  ignore_warnings               = null
  instance                      = null
  multi_cluster_routing_use_any = null
  project                       = null

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
