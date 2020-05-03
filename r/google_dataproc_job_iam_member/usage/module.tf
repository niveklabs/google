module "google_dataproc_job_iam_member" {
  source = "./modules/google/r/google_dataproc_job_iam_member"

  job_id  = null
  member  = null
  project = null
  region  = null
  role    = null
}
