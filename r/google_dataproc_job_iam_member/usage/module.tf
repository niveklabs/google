module "google_dataproc_job_iam_member" {
  source = "./modules/google/r/google_dataproc_job_iam_member"

  # job_id - (required) is a type of string
  job_id = null
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
