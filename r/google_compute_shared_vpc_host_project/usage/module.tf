module "google_compute_shared_vpc_host_project" {
  source = "./modules/google/r/google_compute_shared_vpc_host_project"

  # project - (required) is a type of string
  project = null
}
