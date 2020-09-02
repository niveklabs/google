module "google_folder_iam_member" {
  source = "./modules/google/r/google_folder_iam_member"

  # folder - (required) is a type of string
  folder = null
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
