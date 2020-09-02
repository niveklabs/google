module "google_project_iam_custom_role" {
  source = "./modules/google/r/google_project_iam_custom_role"

  # description - (optional) is a type of string
  description = null
  # permissions - (required) is a type of set of string
  permissions = []
  # project - (optional) is a type of string
  project = null
  # role_id - (required) is a type of string
  role_id = null
  # stage - (optional) is a type of string
  stage = null
  # title - (required) is a type of string
  title = null
}
