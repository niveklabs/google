module "google_pubsub_topic_iam_binding" {
  source = "./google/r/google_pubsub_topic_iam_binding"

  members = []
  project = null
  role    = null
  topic   = null
}
