module "google_binary_authorization_attestor_iam_policy" {
  source = "./modules/google/r/google_binary_authorization_attestor_iam_policy"

  # attestor - (required) is a type of string
  attestor = null
  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
}
