module "google_bigtable_instance_iam_policy" {
  source = "./modules/google/r/google_bigtable_instance_iam_policy"

  instance    = null
  policy_data = null
  project     = null
}
