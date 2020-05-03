module "google_monitoring_group" {
  source = "./modules/google/r/google_monitoring_group"

  display_name = null
  filter       = null
  is_cluster   = null
  parent_name  = null
  project      = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
