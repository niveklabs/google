module "google_compute_subnetwork_iam_policy" {
  source = "./modules/google/r/google_compute_subnetwork_iam_policy"

  policy_data = null
  project     = null
  region      = null
  subnetwork  = null
}
