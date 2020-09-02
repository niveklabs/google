module "google_secret_manager_secret_version" {
  source = "./modules/google/d/google_secret_manager_secret_version"

  # project - (optional) is a type of string
  project = null
  # secret - (required) is a type of string
  secret = null
  # version - (optional) is a type of string
  version = null
}
