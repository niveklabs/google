module "google_service_account_key" {
  source = "./modules/google/r/google_service_account_key"

  key_algorithm      = null
  pgp_key            = null
  private_key_type   = null
  public_key_type    = null
  service_account_id = null
}
