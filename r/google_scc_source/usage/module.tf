module "google_scc_source" {
  source = "./modules/google/r/google_scc_source"

  description  = null
  display_name = null
  organization = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
