module "google_folder_iam_binding" {
  source = "./modules/google/r/google_folder_iam_binding"

  # folder - (required) is a type of string
  folder = null
  # members - (required) is a type of set of string
  members = []
  # role - (required) is a type of string
  role = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
