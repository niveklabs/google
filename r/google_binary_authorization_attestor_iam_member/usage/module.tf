module "google_binary_authorization_attestor_iam_member" {
  source = "./modules/google/r/google_binary_authorization_attestor_iam_member"

  # attestor - (required) is a type of string
  attestor = null
  # member - (required) is a type of string
  member = null
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
