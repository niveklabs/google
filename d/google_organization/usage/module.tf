module "google_organization" {
  source = "./modules/google/d/google_organization"

  # domain - (optional) is a type of string
  domain = null
  # organization - (optional) is a type of string
  organization = null
}
