module "google_endpoints_service_iam_binding" {
  source = "./modules/google/r/google_endpoints_service_iam_binding"

  members      = []
  role         = null
  service_name = null
}
