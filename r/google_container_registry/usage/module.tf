module "google_container_registry" {
  source = "./modules/google/r/google_container_registry"

  # location - (optional) is a type of string
  location = null
  # project - (optional) is a type of string
  project = null
}
