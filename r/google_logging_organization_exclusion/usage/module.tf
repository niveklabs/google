module "google_logging_organization_exclusion" {
  source = "./modules/google/r/google_logging_organization_exclusion"

  # description - (optional) is a type of string
  description = null
  # disabled - (optional) is a type of bool
  disabled = null
  # filter - (required) is a type of string
  filter = null
  # name - (required) is a type of string
  name = null
  # org_id - (required) is a type of string
  org_id = null
}
