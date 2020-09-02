module "google_compute_subnetwork_iam_policy" {
  source = "./modules/google/r/google_compute_subnetwork_iam_policy"

  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # subnetwork - (required) is a type of string
  subnetwork = null
}
