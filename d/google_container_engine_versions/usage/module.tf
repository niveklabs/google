module "google_container_engine_versions" {
  source = "./modules/google/d/google_container_engine_versions"

  location       = null
  project        = null
  region         = null
  version_prefix = null
  zone           = null
}
