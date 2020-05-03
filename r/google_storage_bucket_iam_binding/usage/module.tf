module "google_storage_bucket_iam_binding" {
  source = "./modules/google/r/google_storage_bucket_iam_binding"

  bucket  = null
  members = []
  role    = null
}
