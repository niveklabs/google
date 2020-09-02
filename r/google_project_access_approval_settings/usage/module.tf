module "google_project_access_approval_settings" {
  source = "./modules/google/r/google_project_access_approval_settings"

  # notification_emails - (optional) is a type of set of string
  notification_emails = []
  # project - (optional) is a type of string
  project = null
  # project_id - (required) is a type of string
  project_id = null

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
