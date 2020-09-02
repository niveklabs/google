module "google_compute_region_disk_iam_policy" {
  source = "./modules/google/r/google_compute_region_disk_iam_policy"

  # name - (required) is a type of string
  name = null
  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
}
