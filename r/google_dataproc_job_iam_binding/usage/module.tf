module "google_dataproc_job_iam_binding" {
  source = "./modules/google/r/google_dataproc_job_iam_binding"

  # job_id - (required) is a type of string
  job_id = null
  # members - (required) is a type of set of string
  members = []
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
