module "google_storage_object_access_control" {
  source = "./modules/google/r/google_storage_object_access_control"

  # bucket - (required) is a type of string
  bucket = null
  # entity - (required) is a type of string
  entity = null
  # object - (required) is a type of string
  object = null
  # role - (required) is a type of string
  role = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
