module "google_compute_region_instance_group" {
  source = "./modules/google/d/google_compute_region_instance_group"

  # name - (optional) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # self_link - (optional) is a type of string
  self_link = null
}
