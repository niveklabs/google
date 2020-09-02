module "google_organization_iam_custom_role" {
  source = "./modules/google/r/google_organization_iam_custom_role"

  # description - (optional) is a type of string
  description = null
  # org_id - (required) is a type of string
  org_id = null
  # permissions - (required) is a type of set of string
  permissions = []
  # role_id - (required) is a type of string
  role_id = null
  # stage - (optional) is a type of string
  stage = null
  # title - (required) is a type of string
  title = null
}
