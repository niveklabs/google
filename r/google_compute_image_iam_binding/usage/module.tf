module "google_compute_image_iam_binding" {
  source = "./modules/google/r/google_compute_image_iam_binding"

  # image - (required) is a type of string
  image = null
  # members - (required) is a type of set of string
  members = []
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
