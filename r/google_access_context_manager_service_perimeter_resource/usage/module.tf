module "google_access_context_manager_service_perimeter_resource" {
  source = "./modules/google/r/google_access_context_manager_service_perimeter_resource"

  perimeter_name = null
  resource       = null

  timeouts = [{
    create = null
    delete = null
  }]
}
