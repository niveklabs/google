module "google_cloudfunctions_function" {
  source = "./modules/google/d/google_cloudfunctions_function"

  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
}
