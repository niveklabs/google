module "google_spanner_instance_iam_member" {
  source = "./google/r/google_spanner_instance_iam_member"

  instance = null
  member   = null
  project  = null
  role     = null
}
