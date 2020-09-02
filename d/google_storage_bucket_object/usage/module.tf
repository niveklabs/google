module "google_storage_bucket_object" {
  source = "./modules/google/d/google_storage_bucket_object"

  # bucket - (optional) is a type of string
  bucket = null
  # name - (optional) is a type of string
  name = null
}
