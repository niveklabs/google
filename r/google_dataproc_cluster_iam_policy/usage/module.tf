module "google_dataproc_cluster_iam_policy" {
  source = "./modules/google/r/google_dataproc_cluster_iam_policy"

  cluster     = null
  policy_data = null
  project     = null
  region      = null
}
