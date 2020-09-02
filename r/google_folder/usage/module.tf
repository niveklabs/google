module "google_folder" {
  source = "./modules/google/r/google_folder"

  # display_name - (required) is a type of string
  display_name = null
  # parent - (required) is a type of string
  parent = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
