module "google_spanner_database_iam_member" {
  source = "./google/r/google_spanner_database_iam_member"

  database = null
  instance = null
  member   = null
  project  = null
  role     = null
}
