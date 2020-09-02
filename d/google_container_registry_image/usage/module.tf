module "google_container_registry_image" {
  source = "./modules/google/d/google_container_registry_image"

  # digest - (optional) is a type of string
  digest = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # tag - (optional) is a type of string
  tag = null
}
