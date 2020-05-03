module "google_os_login_ssh_public_key" {
  source = "./modules/google/r/google_os_login_ssh_public_key"

  expiration_time_usec = null
  key                  = null
  user                 = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
