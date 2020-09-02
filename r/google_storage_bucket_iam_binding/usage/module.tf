module "google_storage_bucket_iam_binding" {
  source = "./modules/google/r/google_storage_bucket_iam_binding"

  # bucket - (required) is a type of string
  bucket = null
  # members - (required) is a type of set of string
  members = []
  # role - (required) is a type of string
  role = null
}
