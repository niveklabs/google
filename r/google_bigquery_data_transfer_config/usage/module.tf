module "google_bigquery_data_transfer_config" {
  source = "./modules/google/r/google_bigquery_data_transfer_config"

  # data_refresh_window_days - (optional) is a type of number
  data_refresh_window_days = null
  # data_source_id - (required) is a type of string
  data_source_id = null
  # destination_dataset_id - (required) is a type of string
  destination_dataset_id = null
  # disabled - (optional) is a type of bool
  disabled = null
  # display_name - (required) is a type of string
  display_name = null
  # location - (optional) is a type of string
  location = null
  # notification_pubsub_topic - (optional) is a type of string
  notification_pubsub_topic = null
  # params - (required) is a type of map of string
  params = {}
  # project - (optional) is a type of string
  project = null
  # schedule - (optional) is a type of string
  schedule = null
  # service_account_name - (optional) is a type of string
  service_account_name = null

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
