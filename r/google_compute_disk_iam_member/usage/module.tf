module "google_compute_disk_iam_member" {
  source = "./modules/google/r/google_compute_disk_iam_member"

  # member - (required) is a type of string
  member = null
  # name - (required) is a type of string
  name = null
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
