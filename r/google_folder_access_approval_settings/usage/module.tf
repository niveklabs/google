module "google_folder_access_approval_settings" {
  source = "./modules/google/r/google_folder_access_approval_settings"

  # folder_id - (required) is a type of string
  folder_id = null
  # notification_emails - (optional) is a type of set of string
  notification_emails = []

  enrolled_services = [{
    cloud_product    = null
    enrollment_level = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
