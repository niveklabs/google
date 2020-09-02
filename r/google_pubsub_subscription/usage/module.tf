module "google_pubsub_subscription" {
  source = "./modules/google/r/google_pubsub_subscription"

  # ack_deadline_seconds - (optional) is a type of number
  ack_deadline_seconds = null
  # labels - (optional) is a type of map of string
  labels = {}
  # message_retention_duration - (optional) is a type of string
  message_retention_duration = null
  # name - (required) is a type of string
  name = null
  # project - (optional) is a type of string
  project = null
  # retain_acked_messages - (optional) is a type of bool
  retain_acked_messages = null
  # topic - (required) is a type of string
  topic = null

  dead_letter_policy = [{
    dead_letter_topic     = null
    max_delivery_attempts = null
  }]

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
