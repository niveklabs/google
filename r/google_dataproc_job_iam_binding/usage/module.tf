module "google_dataproc_job_iam_binding" {
  source = "./modules/google/r/google_dataproc_job_iam_binding"

  job_id  = null
  members = []
  project = null
  region  = null
  role    = null
}
