module "google_project_iam_custom_role" {
  source = "./modules/google/r/google_project_iam_custom_role"

  description = null
  permissions = []
  project     = null
  role_id     = null
  stage       = null
  title       = null
}
