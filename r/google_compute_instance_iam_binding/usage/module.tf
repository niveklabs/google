module "google_compute_instance_iam_binding" {
  source = "./modules/google/r/google_compute_instance_iam_binding"

  # instance_name - (required) is a type of string
  instance_name = null
  # members - (required) is a type of set of string
  members = []
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
  # zone - (optional) is a type of string
  zone = null
}
