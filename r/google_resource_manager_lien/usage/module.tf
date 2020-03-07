module "google_resource_manager_lien" {
  source = "./google/r/google_resource_manager_lien"

  origin       = null
  parent       = null
  reason       = null
  restrictions = []

  timeouts = [{
    create = null
    delete = null
  }]
}
