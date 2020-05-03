module "google_spanner_instance_iam_policy" {
  source = "./modules/google/r/google_spanner_instance_iam_policy"

  instance    = null
  policy_data = null
  project     = null
}
