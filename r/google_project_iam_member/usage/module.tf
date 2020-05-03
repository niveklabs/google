module "google_project_iam_member" {
  source = "./modules/google/r/google_project_iam_member"

  member  = null
  project = null
  role    = null
}
