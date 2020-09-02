module "google_compute_region_disk_iam_member" {
  source = "./modules/google/r/google_compute_region_disk_iam_member"

  # member - (required) is a type of string
  member = null
  # name - (required) is a type of string
  name = null
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
