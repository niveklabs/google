module "google_iap_tunnel_instance_iam_member" {
  source = "./modules/google/r/google_iap_tunnel_instance_iam_member"

  # instance - (required) is a type of string
  instance = null
  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
  # zone - (optional) is a type of string
  zone = null
}
