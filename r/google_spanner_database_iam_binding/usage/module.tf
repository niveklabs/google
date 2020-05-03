module "google_spanner_database_iam_binding" {
  source = "./modules/google/r/google_spanner_database_iam_binding"

  database = null
  instance = null
  members  = []
  project  = null
  role     = null
}
