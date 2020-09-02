module "google_access_context_manager_service_perimeter_resource" {
  source = "./modules/google/r/google_access_context_manager_service_perimeter_resource"

  # perimeter_name - (required) is a type of string
  perimeter_name = null
  # resource - (required) is a type of string
  resource = null

  timeouts = [{
    create = null
    delete = null
  }]
}
