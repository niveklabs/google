module "google_compute_shared_vpc_service_project" {
  source = "./modules/google/r/google_compute_shared_vpc_service_project"

  host_project    = null
  service_project = null
}
