module "google_bigtable_instance_iam_binding" {
  source = "./google/r/google_bigtable_instance_iam_binding"

  instance = null
  members  = []
  project  = null
  role     = null
}
