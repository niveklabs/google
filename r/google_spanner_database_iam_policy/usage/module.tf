module "google_spanner_database_iam_policy" {
  source = "./google/r/google_spanner_database_iam_policy"

  database    = null
  instance    = null
  policy_data = null
  project     = null
}
