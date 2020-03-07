module "google_app_engine_service_split_traffic" {
  source = "./google/r/google_app_engine_service_split_traffic"

  migrate_traffic = null
  project         = null
  service         = null

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
