module "google_access_context_manager_access_policy" {
  source = "./modules/google/r/google_access_context_manager_access_policy"

  parent = null
  title  = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
