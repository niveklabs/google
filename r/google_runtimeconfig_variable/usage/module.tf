module "google_runtimeconfig_variable" {
  source = "./modules/google/r/google_runtimeconfig_variable"

  # name - (required) is a type of string
  name = null
  # parent - (required) is a type of string
  parent = null
  # project - (optional) is a type of string
  project = null
  # text - (optional) is a type of string
  text = null
  # value - (optional) is a type of string
  value = null
}
