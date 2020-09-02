module "google_pubsub_topic_iam_binding" {
  source = "./modules/google/r/google_pubsub_topic_iam_binding"

  # members - (required) is a type of set of string
  members = []
  # project - (optional) is a type of string
  project = null
  # role - (required) is a type of string
  role = null
  # topic - (required) is a type of string
  topic = null
}
