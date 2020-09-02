module "google_compute_node_types" {
  source = "./modules/google/d/google_compute_node_types"

  # project - (optional) is a type of string
  project = null
  # zone - (optional) is a type of string
  zone = null
}
