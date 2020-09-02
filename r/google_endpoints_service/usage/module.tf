module "google_endpoints_service" {
  source = "./modules/google/r/google_endpoints_service"

  # grpc_config - (optional) is a type of string
  grpc_config = null
  # openapi_config - (optional) is a type of string
  openapi_config = null
  # project - (optional) is a type of string
  project = null
  # protoc_output_base64 - (optional) is a type of string
  protoc_output_base64 = null
  # service_name - (required) is a type of string
  service_name = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
