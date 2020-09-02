module "google_compute_image" {
  source = "./modules/google/d/google_compute_image"

  # family - (optional) is a type of string
  family = null
  # name - (optional) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
}
