module "google_folder_organization_policy" {
  source = "./modules/google/d/google_folder_organization_policy"

  # constraint - (required) is a type of string
  constraint = null
  # folder - (required) is a type of string
  folder = null
}
