terraform {
  required_providers {
    google = ">= 3.22.0"
  }
}

resource "google_endpoints_service" "this" {
  grpc_config          = var.grpc_config
  openapi_config       = var.openapi_config
  project              = var.project
  protoc_output_base64 = var.protoc_output_base64
  service_name         = var.service_name

  dynamic "timeouts" {
    for_each = var.timeouts
    content {
      create = timeouts.value["create"]
      delete = timeouts.value["delete"]
      update = timeouts.value["update"]
    }
  }

}

