module "google_project_iam_binding" {
  source = "./google/r/google_project_iam_binding"

  members = []
  project = null
  role    = null
}
