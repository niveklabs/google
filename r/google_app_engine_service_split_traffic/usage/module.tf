module "google_app_engine_service_split_traffic" {
  source = "./modules/google/r/google_app_engine_service_split_traffic"

  # migrate_traffic - (optional) is a type of bool
  migrate_traffic = null
  # project - (optional) is a type of string
  project = null
  # service - (required) is a type of string
  service = null

  split = [{
    allocations = {}
    shard_by    = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
