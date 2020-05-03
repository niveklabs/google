module "google_storage_default_object_acl" {
  source = "./modules/google/r/google_storage_default_object_acl"

  bucket      = null
  role_entity = []
}
