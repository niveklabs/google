module "google_storage_bucket_iam_member" {
  source = "./modules/google/r/google_storage_bucket_iam_member"

  # bucket - (required) is a type of string
  bucket = null
  # member - (required) is a type of string
  member = null
  # role - (required) is a type of string
  role = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
