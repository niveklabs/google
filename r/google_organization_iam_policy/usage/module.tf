module "google_organization_iam_policy" {
  source = "./modules/google/r/google_organization_iam_policy"

  # org_id - (required) is a type of string
  org_id = null
  # policy_data - (required) is a type of string
  policy_data = null
}
