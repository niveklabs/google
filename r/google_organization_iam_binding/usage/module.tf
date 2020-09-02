module "google_organization_iam_binding" {
  source = "./modules/google/r/google_organization_iam_binding"

  # members - (required) is a type of set of string
  members = []
  # org_id - (required) is a type of string
  org_id = null
  # role - (required) is a type of string
  role = null
}
