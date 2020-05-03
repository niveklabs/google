module "google_folder" {
  source = "./modules/google/r/google_folder"

  display_name = null
  parent       = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
