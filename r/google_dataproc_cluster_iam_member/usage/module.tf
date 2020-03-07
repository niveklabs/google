module "google_dataproc_cluster_iam_member" {
  source = "./google/r/google_dataproc_cluster_iam_member"

  cluster = null
  member  = null
  project = null
  region  = null
  role    = null
}
