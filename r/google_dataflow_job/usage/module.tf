module "google_dataflow_job" {
  source = "./google/r/google_dataflow_job"

  ip_configuration      = null
  labels                = {}
  machine_type          = null
  max_workers           = null
  name                  = null
  network               = null
  on_delete             = null
  parameters            = {}
  project               = null
  region                = null
  service_account_email = null
  subnetwork            = null
  temp_gcs_location     = null
  template_gcs_path     = null
  zone                  = null
}
