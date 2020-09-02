module "google_os_login_ssh_public_key" {
  source = "./modules/google/r/google_os_login_ssh_public_key"

  # expiration_time_usec - (optional) is a type of string
  expiration_time_usec = null
  # key - (required) is a type of string
  key = null
  # user - (required) is a type of string
  user = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
