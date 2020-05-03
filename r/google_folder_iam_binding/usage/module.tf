module "google_folder_iam_binding" {
  source = "./modules/google/r/google_folder_iam_binding"

  folder  = null
  members = []
  role    = null
}
