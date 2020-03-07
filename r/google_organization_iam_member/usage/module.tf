module "google_organization_iam_member" {
  source = "./google/r/google_organization_iam_member"

  member = null
  org_id = null
  role   = null
}
