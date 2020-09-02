module "google_monitoring_notification_channel" {
  source = "./modules/google/d/google_monitoring_notification_channel"

  # display_name - (optional) is a type of string
  display_name = null
  # labels - (optional) is a type of map of string
  labels = {}
  # project - (optional) is a type of string
  project = null
  # type - (optional) is a type of string
  type = null
  # user_labels - (optional) is a type of map of string
  user_labels = {}
}
