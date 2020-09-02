module "google_folder_iam_policy" {
  source = "./modules/google/r/google_folder_iam_policy"

  # folder - (required) is a type of string
  folder = null
  # policy_data - (required) is a type of string
  policy_data = null
}
