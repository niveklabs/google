module "google_monitoring_notification_channel" {
  source = "./modules/google/d/google_monitoring_notification_channel"

  display_name = null
  labels       = {}
  project      = null
  type         = null
  user_labels  = {}
}
