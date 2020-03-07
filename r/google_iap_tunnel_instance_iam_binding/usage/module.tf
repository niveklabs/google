module "google_iap_tunnel_instance_iam_binding" {
  source = "./google/r/google_iap_tunnel_instance_iam_binding"

  instance = null
  members  = []
  project  = null
  role     = null
  zone     = null
}
