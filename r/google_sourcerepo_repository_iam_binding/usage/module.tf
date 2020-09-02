module "google_sourcerepo_repository_iam_binding" {
  source = "./modules/google/r/google_sourcerepo_repository_iam_binding"

  # members - (required) is a type of set of string
  members = []
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
