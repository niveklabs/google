module "google_dataproc_cluster_iam_binding" {
  source = "./modules/google/r/google_dataproc_cluster_iam_binding"

  # cluster - (required) is a type of string
  cluster = null
  # members - (required) is a type of set of string
  members = []
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # role - (required) is a type of string
  role = null
}
