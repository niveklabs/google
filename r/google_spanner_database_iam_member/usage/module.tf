module "google_spanner_database_iam_member" {
  source = "./modules/google/r/google_spanner_database_iam_member"

  # database - (required) is a type of string
  database = null
  # instance - (required) is a type of string
  instance = null
  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
}
