module "google_compute_subnetwork_iam_binding" {
  source = "./google/r/google_compute_subnetwork_iam_binding"

  members    = []
  project    = null
  region     = null
  role       = null
  subnetwork = null
}
