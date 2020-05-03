module "google_endpoints_service" {
  source = "./modules/google/r/google_endpoints_service"

  grpc_config          = null
  openapi_config       = null
  project              = null
  protoc_output_base64 = null
  service_name         = null
}
