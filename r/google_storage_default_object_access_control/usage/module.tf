module "google_storage_default_object_access_control" {
  source = "./modules/google/r/google_storage_default_object_access_control"

  bucket = null
  entity = null
  object = null
  role   = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
