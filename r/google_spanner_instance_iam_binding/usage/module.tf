module "google_spanner_instance_iam_binding" {
  source = "./google/r/google_spanner_instance_iam_binding"

  instance = null
  members  = []
  project  = null
  role     = null
}
