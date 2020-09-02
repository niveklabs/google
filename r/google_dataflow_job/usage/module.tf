module "google_dataflow_job" {
  source = "./modules/google/r/google_dataflow_job"

  # additional_experiments - (optional) is a type of set of string
  additional_experiments = []
  # ip_configuration - (optional) is a type of string
  ip_configuration = null
  # labels - (optional) is a type of map of string
  labels = {}
  # machine_type - (optional) is a type of string
  machine_type = null
  # max_workers - (optional) is a type of number
  max_workers = null
  # name - (required) is a type of string
  name = null
  # network - (optional) is a type of string
  network = null
  # on_delete - (optional) is a type of string
  on_delete = null
  # parameters - (optional) is a type of map of string
  parameters = {}
  # project - (optional) is a type of string
  project = null
  # region - (optional) is a type of string
  region = null
  # service_account_email - (optional) is a type of string
  service_account_email = null
  # subnetwork - (optional) is a type of string
  subnetwork = null
  # temp_gcs_location - (required) is a type of string
  temp_gcs_location = null
  # template_gcs_path - (required) is a type of string
  template_gcs_path = null
  # zone - (optional) is a type of string
  zone = null

  timeouts = [{
    update = null
  }]
}
