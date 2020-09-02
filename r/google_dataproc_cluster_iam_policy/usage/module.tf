module "google_dataproc_cluster_iam_policy" {
  source = "./modules/google/r/google_dataproc_cluster_iam_policy"

  # cluster - (required) is a type of string
  cluster = null
  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
}
