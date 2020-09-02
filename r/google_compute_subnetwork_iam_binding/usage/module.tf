module "google_compute_subnetwork_iam_binding" {
  source = "./modules/google/r/google_compute_subnetwork_iam_binding"

  # members - (required) is a type of set of string
  members = []
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # role - (required) is a type of string
  role = null
  # subnetwork - (required) is a type of string
  subnetwork = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
