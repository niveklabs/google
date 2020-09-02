module "google_healthcare_dataset_iam_binding" {
  source = "./modules/google/r/google_healthcare_dataset_iam_binding"

  # dataset_id - (required) is a type of string
  dataset_id = null
  # members - (required) is a type of set of string
  members = []
  # role - (required) is a type of string
  role = null
}
