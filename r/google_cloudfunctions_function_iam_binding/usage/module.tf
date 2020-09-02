module "google_cloudfunctions_function_iam_binding" {
  source = "./modules/google/r/google_cloudfunctions_function_iam_binding"

  # cloud_function - (required) is a type of string
  cloud_function = null
  # members - (required) is a type of set of string
  members = []
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # role - (required) is a type of string
  role = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
