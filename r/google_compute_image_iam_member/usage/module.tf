module "google_compute_image_iam_member" {
  source = "./modules/google/r/google_compute_image_iam_member"

  # image - (required) is a type of string
  image = null
  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
