module "google_data_catalog_entry_group_iam_binding" {
  source = "./modules/google/r/google_data_catalog_entry_group_iam_binding"

  # entry_group - (required) is a type of string
  entry_group = null
  # members - (required) is a type of set of string
  members = []
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # role - (required) is a type of string
  role = null
}
