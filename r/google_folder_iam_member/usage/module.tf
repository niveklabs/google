module "google_folder_iam_member" {
  source = "./modules/google/r/google_folder_iam_member"

  folder = null
  member = null
  role   = null
}
