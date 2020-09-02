module "google_cloudfunctions_function_iam_member" {
  source = "./modules/google/r/google_cloudfunctions_function_iam_member"

  # cloud_function - (required) is a type of string
  cloud_function = null
  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # role - (required) is a type of string
  role = null
}
