terraform {
  required_providers {
    google = ">= 3.13.0"
  }
}

resource "google_endpoints_service" "this" {
  grpc_config          = var.grpc_config
  openapi_config       = var.openapi_config
  project              = var.project
  protoc_output_base64 = var.protoc_output_base64
  service_name         = var.service_name
}

