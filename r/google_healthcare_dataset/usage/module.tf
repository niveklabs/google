module "google_healthcare_dataset" {
  source = "./modules/google/r/google_healthcare_dataset"

  # location - (required) is a type of string
  location = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # time_zone - (optional) is a type of string
  time_zone = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
