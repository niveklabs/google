module "google_organization_iam_member" {
  source = "./modules/google/r/google_organization_iam_member"

  # member - (required) is a type of string
  member = null
  # org_id - (required) is a type of string
  org_id = null
  # role - (required) is a type of string
  role = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
