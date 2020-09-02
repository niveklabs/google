module "google_spanner_database_iam_binding" {
  source = "./modules/google/r/google_spanner_database_iam_binding"

  # database - (required) is a type of string
  database = null
  # instance - (required) is a type of string
  instance = null
  # members - (required) is a type of set of string
  members = []
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
