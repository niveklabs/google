module "google_container_engine_versions" {
  source = "./modules/google/d/google_container_engine_versions"

  # location - (optional) is a type of string
  location = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # version_prefix - (optional) is a type of string
  version_prefix = null
  # zone - (optional) is a type of string
  zone = null
}
