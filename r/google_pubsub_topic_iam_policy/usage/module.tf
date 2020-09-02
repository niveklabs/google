module "google_pubsub_topic_iam_policy" {
  source = "./modules/google/r/google_pubsub_topic_iam_policy"

  # policy_data - (required) is a type of string
  policy_data = null
  # project - (optional) is a type of string
  project = null
  # topic - (required) is a type of string
  topic = null
}
