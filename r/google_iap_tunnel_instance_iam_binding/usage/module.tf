module "google_iap_tunnel_instance_iam_binding" {
  source = "./modules/google/r/google_iap_tunnel_instance_iam_binding"

  # instance - (required) is a type of string
  instance = null
  # members - (required) is a type of set of string
  members = []
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
  # zone - (optional) is a type of string
  zone = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
