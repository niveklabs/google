terraform {
  required_providers {
    google = ">= 3.21.0"
  }
}

resource "google_iap_client" "this" {
  brand        = var.brand
  display_name = var.display_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
    }
  }

}

