module "google_data_catalog_entry_group_iam_member" {
  source = "./modules/google/r/google_data_catalog_entry_group_iam_member"

  # entry_group - (required) is a type of string
  entry_group = null
  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # role - (required) is a type of string
  role = null
}
