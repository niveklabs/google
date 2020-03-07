module "google_compute_instance_iam_binding" {
  source = "./google/r/google_compute_instance_iam_binding"

  instance_name = null
  members       = []
  project       = null
  role          = null
  zone          = null
}
