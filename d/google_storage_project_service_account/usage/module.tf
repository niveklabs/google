module "google_storage_project_service_account" {
  source = "./modules/google/d/google_storage_project_service_account"

  # project - (optional) is a type of string
  project = null
  # user_project - (optional) is a type of string
  user_project = null
}
