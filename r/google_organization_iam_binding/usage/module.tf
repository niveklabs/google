module "google_organization_iam_binding" {
  source = "./modules/google/r/google_organization_iam_binding"

  members = []
  org_id  = null
  role    = null
}
