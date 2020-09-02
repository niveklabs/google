module "google_sourcerepo_repository_iam_member" {
  source = "./modules/google/r/google_sourcerepo_repository_iam_member"

  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # repository - (required) is a type of string
  repository = null
  # role - (required) is a type of string
  role = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
