module "google_dataproc_cluster_iam_binding" {
  source = "./modules/google/r/google_dataproc_cluster_iam_binding"

  cluster = null
  members = []
  project = null
  region  = null
  role    = null
}
