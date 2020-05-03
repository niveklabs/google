module "google_container_registry_image" {
  source = "./modules/google/d/google_container_registry_image"

  digest  = null
  name    = null
  project = null
  region  = null
  tag     = null
}
