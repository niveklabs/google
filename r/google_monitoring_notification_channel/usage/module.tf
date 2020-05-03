module "google_monitoring_notification_channel" {
  source = "./modules/google/r/google_monitoring_notification_channel"

  description  = null
  display_name = null
  enabled      = null
  labels       = {}
  project      = null
  type         = null
  user_labels  = {}

  sensitive_labels = [{
    auth_token  = null
    password    = null
    service_key = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
