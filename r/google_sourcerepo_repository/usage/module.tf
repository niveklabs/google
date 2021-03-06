module "google_sourcerepo_repository" {
  source = "./modules/google/r/google_sourcerepo_repository"

  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null

  pubsub_configs = [{
    message_format        = null
    service_account_email = null
    topic                 = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
