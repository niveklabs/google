module "google_compute_image_iam_policy" {
  source = "./modules/google/r/google_compute_image_iam_policy"

  # image - (required) is a type of string
  image = null
  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
}
