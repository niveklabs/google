module "google_project" {
  source = "./google/r/google_project"

  auto_create_network = null
  billing_account     = null
  folder_id           = null
  labels              = {}
  name                = null
  org_id              = null
  project_id          = null
  skip_delete         = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
