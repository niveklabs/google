module "google_binary_authorization_attestor_iam_binding" {
  source = "./modules/google/r/google_binary_authorization_attestor_iam_binding"

  # attestor - (required) is a type of string
  attestor = null
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
