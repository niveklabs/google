module "google_compute_instance_iam_policy" {
  source = "./google/r/google_compute_instance_iam_policy"

  instance_name = null
  policy_data   = null
  project       = null
  zone          = null
}
