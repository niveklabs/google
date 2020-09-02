module "google_compute_shared_vpc_service_project" {
  source = "./modules/google/r/google_compute_shared_vpc_service_project"

  # host_project - (required) is a type of string
  host_project = null
  # service_project - (required) is a type of string
  service_project = null
}
