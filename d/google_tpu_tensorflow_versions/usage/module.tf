module "google_tpu_tensorflow_versions" {
  source = "./modules/google/d/google_tpu_tensorflow_versions"

  # project - (optional) is a type of string
  project = null
  # zone - (optional) is a type of string
  zone = null
}
