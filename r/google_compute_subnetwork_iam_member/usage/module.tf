module "google_compute_subnetwork_iam_member" {
  source = "./modules/google/r/google_compute_subnetwork_iam_member"

  member     = null
  project    = null
  region     = null
  role       = null
  subnetwork = null
}
