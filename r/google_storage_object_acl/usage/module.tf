module "google_storage_object_acl" {
  source = "./google/r/google_storage_object_acl"

  bucket         = null
  object         = null
  predefined_acl = null
  role_entity    = []
}
