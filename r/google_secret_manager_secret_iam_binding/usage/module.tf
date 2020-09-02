module "google_secret_manager_secret_iam_binding" {
  source = "./modules/google/r/google_secret_manager_secret_iam_binding"

  # members - (required) is a type of set of string
  members = []
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
  # secret_id - (required) is a type of string
  secret_id = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
