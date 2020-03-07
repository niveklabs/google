module "google_sourcerepo_repository_iam_binding" {
  source = "./google/r/google_sourcerepo_repository_iam_binding"

  members    = []
  project    = null
  repository = null
  role       = null
}
