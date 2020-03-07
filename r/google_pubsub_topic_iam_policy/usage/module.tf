module "google_pubsub_topic_iam_policy" {
  source = "./google/r/google_pubsub_topic_iam_policy"

  policy_data = null
  project     = null
  topic       = null
}
