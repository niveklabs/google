terraform {
  required_providers {
    google = ">= 3.34.0"
  }
}

resource "google_os_login_ssh_public_key" "this" {
  expiration_time_usec = var.expiration_time_usec
  key                  = var.key
  user                 = var.user

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

