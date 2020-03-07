module "google_bigtable_instance_iam_member" {
  source = "./google/r/google_bigtable_instance_iam_member"

  instance = null
  member   = null
  project  = null
  role     = null
}
