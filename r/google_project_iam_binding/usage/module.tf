module "google_project_iam_binding" {
  source = "./modules/google/r/google_project_iam_binding"

  members = []
  project = null
  role    = null
}
