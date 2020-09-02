module "google_storage_bucket_acl" {
  source = "./modules/google/r/google_storage_bucket_acl"

  # bucket - (required) is a type of string
  bucket = null
  # default_acl - (optional) is a type of string
  default_acl = null
  # predefined_acl - (optional) is a type of string
  predefined_acl = null
  # role_entity - (optional) is a type of list of string
  role_entity = []
}
