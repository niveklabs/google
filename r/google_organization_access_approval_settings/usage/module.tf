module "google_organization_access_approval_settings" {
  source = "./modules/google/r/google_organization_access_approval_settings"

  # notification_emails - (optional) is a type of set of string
  notification_emails = []
  # organization_id - (required) is a type of string
  organization_id = null

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
