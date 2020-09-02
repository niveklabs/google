module "google_access_context_manager_access_policy" {
  source = "./modules/google/r/google_access_context_manager_access_policy"

  # parent - (required) is a type of string
  parent = null
  # title - (required) is a type of string
  title = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
