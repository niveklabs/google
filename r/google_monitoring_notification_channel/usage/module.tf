module "google_monitoring_notification_channel" {
  source = "./modules/google/r/google_monitoring_notification_channel"

  # description - (optional) is a type of string
  description = null
  # display_name - (optional) is a type of string
  display_name = null
  # enabled - (optional) is a type of bool
  enabled = null
  # labels - (optional) is a type of map of string
  labels = {}
  # project - (optional) is a type of string
  project = null
  # type - (required) is a type of string
  type = null
  # user_labels - (optional) is a type of map of string
  user_labels = {}

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
