module "google_pubsub_topic_iam_member" {
  source = "./modules/google/r/google_pubsub_topic_iam_member"

  # member - (required) is a type of string
  member = null
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
  # topic - (required) is a type of string
  topic = null

  condition = [{
    description = null
    expression  = null
    title       = null
  }]
}
