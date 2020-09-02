module "google_secret_manager_secret_version" {
  source = "./modules/google/r/google_secret_manager_secret_version"

  # enabled - (optional) is a type of bool
  enabled = null
  # secret - (required) is a type of string
  secret = null
  # secret_data - (optional) is a type of string
  secret_data = null

  timeouts = [{
    create = null
    delete = null
  }]
}
