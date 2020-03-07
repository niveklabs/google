module "google_bigquery_data_transfer_config" {
  source = "./google/r/google_bigquery_data_transfer_config"

  data_refresh_window_days = null
  data_source_id           = null
  destination_dataset_id   = null
  disabled                 = null
  display_name             = null
  location                 = null
  params                   = {}
  project                  = null
  schedule                 = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
