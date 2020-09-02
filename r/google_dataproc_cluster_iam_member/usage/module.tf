module "google_dataproc_cluster_iam_member" {
  source = "./modules/google/r/google_dataproc_cluster_iam_member"

  # cluster - (required) is a type of string
  cluster = null
  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # role - (required) is a type of string
  role = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
