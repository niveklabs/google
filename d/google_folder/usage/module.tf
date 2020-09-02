module "google_folder" {
  source = "./modules/google/d/google_folder"

  # folder - (required) is a type of string
  folder = null
  # lookup_organization - (optional) is a type of bool
  lookup_organization = null
}
