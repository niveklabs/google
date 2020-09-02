module "google_resource_manager_lien" {
  source = "./modules/google/r/google_resource_manager_lien"

  # origin - (required) is a type of string
  origin = null
  # parent - (required) is a type of string
  parent = null
  # reason - (required) is a type of string
  reason = null
  # restrictions - (required) is a type of list of string
  restrictions = []

  timeouts = [{
    create = null
    delete = null
  }]
}
