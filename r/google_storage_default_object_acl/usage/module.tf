module "google_storage_default_object_acl" {
  source = "./modules/google/r/google_storage_default_object_acl"

  # bucket - (required) is a type of string
  bucket = null
  # role_entity - (optional) is a type of set of string
  role_entity = []
}
