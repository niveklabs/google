module "google_storage_bucket_acl" {
  source = "./modules/google/r/google_storage_bucket_acl"

  bucket         = null
  default_acl    = null
  predefined_acl = null
  role_entity    = []
}
