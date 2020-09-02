module "google_container_registry_repository" {
  source = "./modules/google/d/google_container_registry_repository"

  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
}
