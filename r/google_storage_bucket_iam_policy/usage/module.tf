module "google_storage_bucket_iam_policy" {
  source = "./modules/google/r/google_storage_bucket_iam_policy"

  # bucket - (required) is a type of string
  bucket = null
  # policy_data - (required) is a type of string
  policy_data = null
}
