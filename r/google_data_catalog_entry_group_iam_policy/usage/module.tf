module "google_data_catalog_entry_group_iam_policy" {
  source = "./modules/google/r/google_data_catalog_entry_group_iam_policy"

  # entry_group - (required) is a type of string
  entry_group = null
  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
}
