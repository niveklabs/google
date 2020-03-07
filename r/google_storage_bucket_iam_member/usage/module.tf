module "google_storage_bucket_iam_member" {
  source = "./google/r/google_storage_bucket_iam_member"

  bucket = null
  member = null
  role   = null
}
