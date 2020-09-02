module "google_project" {
  source = "./modules/google/r/google_project"

  # auto_create_network - (optional) is a type of bool
  auto_create_network = null
  # billing_account - (optional) is a type of string
  billing_account = null
  # folder_id - (optional) is a type of string
  folder_id = null
  # labels - (optional) is a type of map of string
  labels = {}
  # name - (required) is a type of string
  name = null
  # org_id - (optional) is a type of string
  org_id = null
  # project_id - (required) is a type of string
  project_id = null
  # skip_delete - (optional) is a type of bool
  skip_delete = null

  timeouts = [{
    create = null
    delete = null
    read   = null
    update = null
  }]
}
