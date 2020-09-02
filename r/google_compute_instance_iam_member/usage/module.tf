module "google_compute_instance_iam_member" {
  source = "./modules/google/r/google_compute_instance_iam_member"

  # instance_name - (required) is a type of string
  instance_name = null
  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
  # zone - (optional) is a type of string
  zone = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
