module "google_pubsub_subscription" {
  source = "./modules/google/r/google_pubsub_subscription"

  ack_deadline_seconds       = null
  labels                     = {}
  message_retention_duration = null
  name                       = null
  project                    = null
  retain_acked_messages      = null
  topic                      = null

  expiration_policy = [{
    ttl = null
  }]

  push_config = [{
    attributes = {}
    oidc_token = [{
      audience              = null
      service_account_email = null
    }]
    push_endpoint = null
  }]

  timeouts = [{
    create = null
    delete = null
    update = null
  }]
}
