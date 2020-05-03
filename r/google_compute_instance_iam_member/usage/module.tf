module "google_compute_instance_iam_member" {
  source = "./modules/google/r/google_compute_instance_iam_member"

  instance_name = null
  member        = null
  project       = null
  role          = null
  zone          = null
}
