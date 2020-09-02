module "google_dataproc_job_iam_policy" {
  source = "./modules/google/r/google_dataproc_job_iam_policy"

  # job_id - (required) is a type of string
  job_id = null
  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
}
