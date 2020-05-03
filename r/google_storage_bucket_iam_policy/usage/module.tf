module "google_storage_bucket_iam_policy" {
  source = "./modules/google/r/google_storage_bucket_iam_policy"

  bucket      = null
  policy_data = null
}
