module "google_project_organization_policy" {
  source = "./modules/google/d/google_project_organization_policy"

  # constraint - (required) is a type of string
  constraint = null
  # project - (required) is a type of string
  project = null
}
