module "google_endpoints_service_iam_policy" {
  source = "./modules/google/r/google_endpoints_service_iam_policy"

  # policy_data - (required) is a type of string
  policy_data = null
  # service_name - (required) is a type of string
  service_name = null
}
