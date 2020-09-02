module "google_runtimeconfig_config" {
  source = "./modules/google/r/google_runtimeconfig_config"

  # description - (optional) is a type of string
  description = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
}
