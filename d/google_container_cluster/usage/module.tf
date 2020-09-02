module "google_container_cluster" {
  source = "./modules/google/d/google_container_cluster"

  # location - (optional) is a type of string
  location = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # zone - (optional) is a type of string
  zone = null
}
