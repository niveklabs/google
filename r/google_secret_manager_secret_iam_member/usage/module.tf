module "google_secret_manager_secret_iam_member" {
  source = "./modules/google/r/google_secret_manager_secret_iam_member"

  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
  # secret_id - (required) is a type of string
  secret_id = null
}
