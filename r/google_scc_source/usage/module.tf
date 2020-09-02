module "google_scc_source" {
  source = "./modules/google/r/google_scc_source"

  # description - (optional) is a type of string
  description = null
  # display_name - (required) is a type of string
  display_name = null
  # organization - (required) is a type of string
  organization = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
