module "google_compute_subnetwork_iam_member" {
  source = "./modules/google/r/google_compute_subnetwork_iam_member"

  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # role - (required) is a type of string
  role = null
  # subnetwork - (required) is a type of string
  subnetwork = null
}
