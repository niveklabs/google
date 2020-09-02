module "google_storage_object_acl" {
  source = "./modules/google/r/google_storage_object_acl"

  # bucket - (required) is a type of string
  bucket = null
  # object - (required) is a type of string
  object = null
  # predefined_acl - (optional) is a type of string
  predefined_acl = null
  # role_entity - (optional) is a type of set of string
  role_entity = []
}
