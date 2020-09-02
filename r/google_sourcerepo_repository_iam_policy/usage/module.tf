module "google_sourcerepo_repository_iam_policy" {
  source = "./modules/google/r/google_sourcerepo_repository_iam_policy"

  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
  # repository - (required) is a type of string
  repository = null
}
