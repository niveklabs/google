module "google_healthcare_dataset_iam_policy" {
  source = "./modules/google/r/google_healthcare_dataset_iam_policy"

  # dataset_id - (required) is a type of string
  dataset_id = null
  # policy_data - (required) is a type of string
  policy_data = null
}
