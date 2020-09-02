module "google_healthcare_dataset_iam_member" {
  source = "./modules/google/r/google_healthcare_dataset_iam_member"

  # dataset_id - (required) is a type of string
  dataset_id = null
  # member - (required) is a type of string
  member = null
  # role - (required) is a type of string
  role = null
}
