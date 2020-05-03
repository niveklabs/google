module "google_dataproc_cluster_iam_member" {
  source = "./modules/google/r/google_dataproc_cluster_iam_member"

  cluster = null
  member  = null
  project = null
  region  = null
  role    = null
}
