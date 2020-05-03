module "google_sourcerepo_repository_iam_binding" {
  source = "./modules/google/r/google_sourcerepo_repository_iam_binding"

  members    = []
  project    = null
  repository = null
  role       = null
}
